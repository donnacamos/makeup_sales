class MakeupSales::CLI

  def call
    MakeupSales::Scraper.scrape_product  
    puts "\nWelcome to the Makeup Sales of Ulta Beauty:\n"
    main_menu 
  end
  
  def main_menu
    puts "Type 'list' to see a list of the products." 
    puts "Or type 'quit' to leave." 
    input = gets.strip.downcase  
    case(input)  
    when 'list' 
      product_list
    when 'quit'  
      goodbye  
    else
      puts "Invalid Entry" 
      main_menu
    end
  end
  
  def product_list   
    puts "Here are the beauty products on sale today:\n"
    MakeupSales::Product.all.each.with_index(1) do |product, idx|
      puts "-------------------------------------------------"
      puts "#{idx}. #{product.brand}" 
      puts "#{product.description}" 
      puts "Sale Price:#{product.sale_price}" 
      puts "Original Price:#{product.previous_price}"
      puts "-------------------------------------------------"
     end
      puts "\nSelect a number for the product you want more info about."
      input = gets.strip.to_i - 1  #index value 0-18
      max_input = MakeupSales::Product.all.size - 1
    #check for bad input
     until input.between?(0,max_input)
       puts "Sorry, please enter a number between 1 and #{max_input + 1}"
       input = gets.strip.to_i - 1
     end
      puts "valid input"
     
      product_object = MakeupSales::Product.scrape_product_details[input] 
      show_product_details(product_object)
      select_product 
  end 
  
  def show_product_details(product_object)
      MakeupSales::Scraper.scrape_product_details(product_object) 
  end 
  
  def select_product
    input = gets.strip.downcase  
    case input 
    when '1'..'18'  
    product_details(input.to_i)
    when 'quit','exit'
      goodbye 
    else 
      puts "invalid entry" 
      main_menu 
    end 
  end 
  
  def product_details(product_object)   
    MakeupSales::Scraper.scrape_product_details(product_object) 
    next_product 
  end 
  
  
  def next_product 
    puts "Would you like to see another product? Y or N?"
    answer = gets.strip.downcase 
    if answer == 'y' 
      puts main_menu 
    elsif answer == 'n' 
      puts goodbye 
    else 
      puts "invalid entry" 
      next_product 
    end 
  end 
  
  def goodbye 
    puts "Thank you for shopping with us! See you soon!" 
  end
 
end   
