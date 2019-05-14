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
    @@all.select{ |product| product.title = ""} 
  end 
   
  def self.product_details
    @@all.select{ |product| product.description = ""} 
  end 
  
end 