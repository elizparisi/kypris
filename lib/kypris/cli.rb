require_relative 'version.rb'

class CLI
    @@low = []
    @@med = []
    @@high = [] 


  def call
    greeting
    menu
    see_more
    goodbye
  end
  
  def greeting  
    puts "************************************************"
    puts "********** Welcome to Kypris Products! *********"
    puts "************************************************"
  end
  
  def menu
    puts "Enter the price range you would like to see products from, please choose from the below:"
    puts "1. $50 - $100"
    puts "2. $100 - $150"
    puts "3. $150 and above"

    input = gets.strip.to_i    
    if input == 1 
      @@low.collect do |product|
        puts "Name: #{product.name}" 
      end

    elsif input == 2 
      @@med.collect do |product|
        puts "Name: #{product.name}"
      end

    elsif input == 3 
     @@high.uniq.collect do |product|
        puts "Name: #{product.name}"
      end

    elsif input == "exit" || input == "main menu"
        goodbye

    else
      puts "Invalid request, please choose a price range again."
    end 
  end
  
  def scraper_categories
    scraped = Scraper.scrape_website
   
    scraped.each do |product| 
      number = product.price.gsub("$","").to_i

      if number >= 150.00
        @@high << product
      elsif number < 80.00 && number > 150.00
        @@mid << product 
      elsif number > 50.00 && number < 100.00
        @@low << product
      end
    end
  end


  def see_more
    puts "Would you like to see more information about a specific product? Please type in the product name as shown above."
    input = gets.strip
    if product = Product.find_by_name(input)
       puts "Name: #{product.name}  *  Price: #{product.price}  *  Link: #{product.url}"
    elsif input == "exit" || input == "main menu"
      goodbye
    else
      puts "Invalid entry. Please type the flower name."
      see_more   
    end
  end

  def goodbye
    puts "Thank you for visiting! Check back soon for more products."
  
    input = gets.strip
      if input == "main menu"
        call
      elsif input == "exit"
        puts "Goodbye"
      else 
        puts "Invalid entry. Please type either main menu or exit."
      end
  end
end
  