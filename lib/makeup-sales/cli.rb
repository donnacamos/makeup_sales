class MakeupSales::CLI

  def call
    MakeupSales::Scraper  
    puts "Hello Beautiful! Welcome to the Makeup Sales of Ulta Beauty:"
    start 
  end

  def start 
    puts ""
    puts "Which Ulta Beauty Sales product page would you like to see? 1, 2, 3, 4, 5, 6, 7?" 
    input = gets.strip.to_i 
    
    print_products(input) 
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the product you'd like more info on or type list to see the products again or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0
        the_product = @sale[input.to_i-1]
        puts "#{the_product.name} - #{the_product.price} - #{the_product.availability}"
      elsif input == "list"
        list_product
      else
        puts "Not sure what you want, type list or exit."
      end
    end
  end

  def goodbye
    puts "See you tomorrow for more great products from Ulta Beauty!" 
  end
end
