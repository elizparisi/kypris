class CommandLineInterface
  
  def call
    greeting
    list_products
    menu
    goodbye
  end
    
  def greeting  
    puts "************************************************"
    puts "********** Welcome to Kypris Products! *********"
    puts "************************************************"
  end
  
  def list_products
    puts "Here are our products:"
    @products = Product.today
    @products.each_with_index(1) do |product, i|
      puts "#{i}. #{product.name}"
    end
  end
  
  def menu
    input = nil
    while input != "exit" 
      puts "Enter the product you would like more info on, type list to see the products again or exit to leave?"
      input = gets.strip.downcase
      
      if input.to_i > 0 
        the_product = @product[input.to_i-1]
        puts "#{the_product.name} - #{the_product.price} - #{the_product.description}"
      elsif "list"
          list_products
      else
          puts "I don't understand, please type list or exit."
      end
    end
  end
  
  def goodbye
    puts "Thank you for visiting! Check back soon for more products."
  end
end
  