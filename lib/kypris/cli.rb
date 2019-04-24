class CLI

  def call 
    welcome
    print_products
    answer
  end 
  
  def welcome 
    puts "************************************************"
    puts "********** Welcome to Kypris Products! *********"
    puts "************************************************"
    puts "We have the following products..."
  end 
  
  def print_products 
    Scraper.scraping_page
    Product.all.each_with_index do |product, i|
      puts "#{i+1}. #{product.name}"
    end
  end 

  def answer
    input = nil
    
    while input != "exit"
      puts ""
      puts "Please type the product number you'd like to know more about."
      input = gets.strip

      if input.count("a-zA-Z") > 0
        puts "That's not a number between 1 - 17. Please try again."
        
        elsif input.to_i > 17 || input.to_i <= 0 
            puts "That's not a number between 1 - 17."

        elsif input.to_i-1 <= Product.all.size
          product = Product.all[input.to_i-1]
          puts "That product is #{product.name}"
          puts "Price: #{product.price}"
      end 
    end 
    puts ""
    puts "Thanks for coming!"
  end 
end 