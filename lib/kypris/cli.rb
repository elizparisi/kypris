class CLI
  
 def start 
 puts  "                        WELCOME !!!       "
  Scraper.new.scrape_page
  list_product
  input = ""
  while input != 0
    menu
    input = gets.chomp.downcase
    if input == "list"  
      list_product
    elsif input == "exit"
      input = 0
    else
      product_price(input.to_i)
    end
  end
  puts "Thank You For Visiting Our Store!"
  end 
  
  def list_product
    Product.all.each.with_index(1) do |product, index|
      #binding.pry
      puts "#{index}. #{product.name}" 
      end 
  end
  
  def menu
   puts "*****************************************************************"
   puts "Type the number to get more information about paticular product: "
   puts "-----------------------------------------------------------------"
   puts "Type 'list' to show current products"
   puts "-----------------------------------------------------------------"
   puts  "Type 'exit' to quit"
   puts "*****************************************************************"
    
  end 
  
  def product_price(selection)
    if selection <= Product.all.size && selection > 0 
      index = selection - 1
      obj = Product.all[index]
      puts "Name of the Product is: #{obj.name}! "
      puts "The price for the currect product is:"
      puts obj.price
    else
      puts "Please enter a valid selection"
    end
  end 
end 