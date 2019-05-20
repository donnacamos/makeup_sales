class MakeupSales::Product
  
  attr_accessor  :brand, :sale_price, :previous_price, :description, :url, :more_info   
  
  @@all = [] 
  
  def initialize(brand)
    @brand = brand  
     @@all << self 
     
  end 
  
  def self.all 
    @@all 
  end 
  
  
end 