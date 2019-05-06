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
    page_number = gets.strip.to_i
    case page_number 
    when 1
      page_1
    when 2
      page_2
    when 3
      page_3
    when 4
      page_4
    when 5
      page_5
    when 6
      page_6
    when 7
      page_7
    when "q" 
      puts "Thank you for shopping with us! See you soon!" 
    else
      puts "Invalid Choice"
      menu
    end
  end

  def page_1 
    puts "You chose 1"
  end  

  def page_2 
    puts "You chose 2"
  end  

  def page_3 
    puts "You chose 3"
  end 
  
  def page_4 
    puts "You chose 4"
  end  

  def page_5 
    puts "You chose 5"
  end  

  def page_6
    puts "You chose 6"
  end
  
  def page_7
    puts "You chose 7"
  end 
 end 
 
 
 
  
  
