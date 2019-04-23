class Product
  # return a bunch of instances of products
  attr_accessor :name, :price, :url, :description
  
  @@all = []

  def initialize(product_hash)
    product_hash.each{|k, v| self.send(("#{k}="), v)}
    @@all << self
  end

  def self.create_product_list(product_list_array)
    product_list_array.each do |product|
      Product.new(product)
    end
  end

  def self.all
    @@all
  end
end

