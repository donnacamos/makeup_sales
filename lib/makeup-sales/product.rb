class MakeupSales::Product
  
  attr_accessor :title, :url, :brand, :sale_price, :previous_price, :description  
  
  @@all = [] 
  
  def initialize(title)
    @title = title 
     @@all << self 
     
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.product_list 
  end 
   
  def self.product_details 
  end 
  
end 