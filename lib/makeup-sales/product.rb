class MakeupSales::Product
  
  @@all = [] 
  
  attr_accessor :name, :url, :page_number, :brand, :sale_price, :previous_price, :description  
  
  def initialize(name, url)  
    @name = name 
    @url = url  
    
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  
   
  
end 