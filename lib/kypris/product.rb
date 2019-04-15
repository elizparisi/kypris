Class Product
  # return a bunch of instances of products
  attr_accessor :name, :price, :url, :description
  def self.today
    self.scrape_products
  end
    
  def self.scrape_products
    # go to Kypris, find products
    # scrape the properties
    # instantiate products
    
    products = []
    
    site = "https://shop.kyprisbeauty.com/"
    page = Nokogiri::HTML(open(site))
    product.name = page.css("h4.title").text
    product.price = page.css("span.price").text.gsub("\n","")
    product.url = page.css("a.clearfix").first.attr("href")
    
    
  def self.scrape_descriptions
  
  end
    
    product_1 = Product.new
    product_1.name =
    product_1.price =
    product_1.url =
    product_1.description =
    
    product_2 = Product.new
    product_2.name =
    product_2.price =
    product_2.url =
    product_2.description =
    
    products
  end
end
