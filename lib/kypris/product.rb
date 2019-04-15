require_relative 'version.rb'

class Product
  # return a bunch of instances of products
  attr_accessor :name, :price, :url
  
  
  def initialize(name, price, url)
    @name = name
    @price = price
    @url = url    
    @@all << self
  end

  def self.all
      @@all
  end

  def self.create(name, price, url)
    product = self.new(name, price, url) if find_by_name(name).nil?
  end

  def self.find_by_name(name)
    @@all.find { |product| product.name == name }
  end
end

