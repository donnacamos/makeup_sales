class MakeupSales::CLI

  def call
    MakeupSales::Scraper
    start
    menu 
  end

  def start 
    puts "" 
    puts "Hello Beautiful! Welcome to the Makeup Sales of Ulta Beauty:"
    puts ""
    puts "What page number would you like to see first?"
  end 
  
  def menu
    puts "1 - 7 or press q to quit" 
    user_input = gets.strip.to_i 
    case user_input 
    when 1..7
     list_product  
    when 'q' 
     good_bye  
    else
      puts "Invalid Choice"
      menu
    end
  end
  
  def list_product  
    puts "product 1" 
    puts "product 2"
    puts "product 3" 
    puts "product 4"
    puts "product 5" 
    puts "product 6"
    puts "product 7" 
    puts "product 8"
    puts "" 
    puts "Which product would you like more details on (1-8)?" 
    select_product 
  end 
  
  def select_product
    selection = gets.strip.to_i 
    case selection
    when 1..8
    product_details
    when 'q' 
      good_bye 
    else 
      puts "invalid entry" 
      main 
    end 
  end 
  
  def product_details  
    puts "product name" 
    puts "product brand" 
    puts "original price" 
    puts "sale price" 
    puts "product description" 
    
  end 
  
  def good_bye 
    puts "Thank you for shopping with us! See you soon!" 
  end 
end  
 
 
  
  
