class CommandLineInterface
  
  def call
    greeting
    list_products
    menu
    goodbye
  end
    
  def greeting  
    puts "********** Welcome to Kypris Products! *********"
  end
  
  def list_products
    puts "Here are our products:"
  end
  
  def menu
    input = nil
    while input != "exit" 
      puts "Enter the product you would like more info on, type list to see the products again or exit to leave?"
      
      input = gets.strip.downcase
      case input 
        when "1"
          puts "more info product 1"
        when "2"
          puts "more info on product 2"
        when "3"
          puts "more info on product 3"
        when "4"
          puts "more info on product 4"
        when "5"
          puts "more info on product 5"
        when "6"
          puts "more info on product 6"
        when "7"
          puts "more info on product 7"
        when "8"
          puts "more info on product 8"
        when "9"
          puts "more info on product 9"
        when "10"
          puts "more info on product 10"
        when "11"
          puts "more info on product 11"
        when "12"
          puts "more info on product 12"
        when "13"
          puts "more info on product 13"
        when "14"
          puts "more info on product 14"
        when "15"
          puts "more info on product 15"
        when "16"
          puts "more info on product 16"
        when "17"
          puts "more info on product 17"
        when "list"
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
  