class Scraper
  
  def self.scraping_page
   url = ("https://shop.kyprisbeauty.com/") 
   doc = Nokogiri::HTML(url) 
   
   get_page = doc.search("div.row.products")
    
   get_page.each do |product|
     new_product = Product.new 
     new_product.name = product.search("h4.title").text
     new_product.price = product.search("span.price").text.gsub("\n","")
     new_product.url = "https://shop.kyprisbeauty.com"+product.search("a.clearfix").first.attr("href")
     end 
    end   
  end 