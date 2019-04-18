class MakeupSales::CLI 
  
  def call 
    puts "Today's Ulta Beauty Sales:" 
    list_products 
    menu 
  end 
  
  def list_products 
    puts 
    1. NO7 - Line Correcting Booster Serum - Sale Price $29.39 - Original Price $41.99
    2. RAPIDLASH - Eyelash Enhancing Serum - Sale Price $34.99 - Original Price $49.99
  end 
  
  def menu 
    puts "Enter the number of the product you'd like more info on:"
    input = gets.strip 
    case input 
    when "1" 
    puts "More info on product 1..." 
    when "2" 
    puts "More info on product 2..." 
  end 
end 
end 
