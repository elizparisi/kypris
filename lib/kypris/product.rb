class Product
  # return a bunch of instances of products
  attr_accessor :name, :price, :url
  @@all = []

  def initialize(name=nil, price=nil, url=nil)
    @name = name
    @price = price
    @url = url 
    @@all << self
  end

  def self.all 
    @@all
  end 
end 
