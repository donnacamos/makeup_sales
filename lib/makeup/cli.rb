class MakeupSales::CLI 
  
  def call 
    puts "Today's Ulta Beauty Sales:" 
    list_products 
    menu 
    goodbye 
  end 
  
  def list_products 
    puts "Today's Ulta Beauty Products on sale now:"
    puts 
    1. NO7 - Line Correcting Booster Serum - Sale Price $29.39 - Original Price $41.99
    2. RAPIDLASH - Eyelash Enhancing Serum - Sale Price $34.99 - Original Price $49.99
    end 
    
    @sales = MakeupSales::Sale.today 
  
  def menu 
    puts "Enter the number of the product you'd like more info on or type list or type exit:"
    while input != "exit" 
    input = gets.strip 
    case input 
    when "1" 
    puts "More info on product 1..." 
    when "2" 
    puts "More info on product 2..." 
    when "list"
    puts list_products 
  else
    puts "Not sure what you want: type list or exit."
  end 
end 

    def goodbye 
      puts "See you tomorrow for more sales on our Fabulous Girlie Go-tos! Ta ta!"
end 
