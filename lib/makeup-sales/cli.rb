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
    
    puts "" 
    puts "What product would you like more info on?" 
    input = gets.strip 
    
    product = MakeupSales::Product.find(input.to_i)
    
    print_product(product) 
    
    puts "" 
    puts "Would you like to see another product? Enter Yes or No"
    
    input = gets.strip.downcase 
    if input == "y" 
      start 
    elsif input == "n" 
      puts "" 
      puts "Thank you! Come back tomorrow for more beauty sales!" 
      exit 
    else 
      puts "" 
      puts "I don't understand that answer."
      start 
    end
  end 

  def print_product(product) 
     puts ""
    puts "----------- #{product.name} - #{product.page_number} -----------"
    puts ""
    puts "Brand:               #{product.brand}"
    puts "Sale Price:          #{product.sale_price}"
    puts "Previous Price:      #{product.previous_price}"
    puts "Buy Now:             #{product.buy_now}"
    puts ""
    puts "---------------Description--------------"
    puts ""
    puts "#{product.description}"
    puts ""
  end
 
 def print_products(from_number) 
   puts "" 
   puts "----------Products #{from_number} - #{from_number+7}--------------"
   puts "" 
   MakeupSales::Product.all[from_number-1, 7].each.with_index(from_number) do |product, index| 
     puts "#{index}. #{product.name} - #{product.brand}" 
     end 
  end 
end 