class MakeupSales::Product
  
  attr_accessor :title, :brand, :sale_price, :previous_price, :description  
  
  @@all = [] 
  
  def initialize(title)
    @title = title 
     @@all << self 
     
  end 
  
  def self.all 
    @@all 
  end 
  
  
end 