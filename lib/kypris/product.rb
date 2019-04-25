class Product
  # return a bunch of instances of products
  attr_accessor :name, :price  
  @@all = []
  
  def initialize(name) 
    @name = name
    @@all << self 
    
  end
  
  def self.all
    @@all
  end 
end 
