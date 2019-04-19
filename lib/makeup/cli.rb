class MakeupSales::CLI

  def call
    list_products 
    menu
    goodbye
  end

  def list_products 
    puts "Ulta Beauty's Sales Today:" 
    @sales = Makesales::Sale.today
    @sales.each.with_index(1) do |product, i|
      puts "#{i}. #{product.name} - #{product.price} - #{product.availability}"
    end
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
