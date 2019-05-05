class MakeupSales::CLI

  def call
    MakeupSales::Scraper
    puts "" 
    puts "Hello Beautiful! Welcome to the Makeup Sales of Ulta Beauty:"
    start 
  end

  def start 
    puts ""
    puts "What page number would you like to see first?"
    puts ""
    puts "1, 2, 3, 4, 5, 6, 7, or press q to quit"
  end   
end 