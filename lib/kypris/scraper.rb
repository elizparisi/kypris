class Scraper
  
  def scrape_page
    html = open("https://shop.kyprisbeauty.com/")
    doc = Nokogiri::HTML(html)
   
    doc.css("div.row.products").each do |product|
    
      name = product.css("h4.title").text.strip 
      new_product  = Product.new(name) unless name.empty?
      new_product.price = product.css("span.price").text unless new_product.nil?
   end
end 
end 