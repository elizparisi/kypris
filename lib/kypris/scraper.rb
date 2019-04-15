require_relative 'version.rb'
require 'nokogiri'
require_relative 'product.rb'

class Scraper
  
  def self.scrape_website
    website = Nokogiri::HTML(open("https://shop.kyprisbeauty.com/"))
    section = website.css("div.row.products")
    
    @@products = section.css("div.product.thirty-thirty").text
    @@products.collect do |product|
      capname = []
      name = product.css("h4.title").text
      words = name.split(" ")
      words.collect do |word|
        letters = word.split("")
        letters.first.upcase!
        capital = letters.join
        capname << capital
      end
      name = capname.join(" ")


      price = product.css("span.price").text.gsub("\n","")
      url = product.css("a.clearfix").first.attr("href")
               
      object = Product.create(name,price,url)
    end
    
  end 
 
  def scraper_categories
    scraped = self.scrape_website
   
    scraped.each do |product| 
      number = product.price.gsub("$","").to_i

      if number >= 150.00
        CLI.high << product
      elsif number < 149.00 && number > 50.00
        CLI.mid << product 
      elsif number > 50.00 && number < 0.00
        CLI.low << product
      end
    end
  end
end