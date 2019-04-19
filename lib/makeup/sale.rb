class MakeupSales::Sale 
  
  attr_accessor :brand, :product, :sale_price, :previous_price, :url 

   def self.today 
   # scrape Ulta Beauty and then return the sale of the product
   self.scrape_products 
   end 
  
  def self.scrape_products 
    products = [] 
    
    sale << self.scrape_ulta 
    
    deals 
  end 
  
  def self.scrape_ulta 
    
    doc = Nokogiri::HTML(open("https://www.ulta.com/promotion/sale"))
    
    sale = self.new 
    sale.brand = doc.search("h4.prod-title").text.strip 
    sale.product = doc.search("p.prod-desc").text.strip
    sale.sale_price = doc.search("span.new-pro-price").text.strip 
    sale.previous_price = doc.search("span.pro-old-price").text.strip 
    sale.url = doc.search("a").first.attr("href").strip 
    sale.availability = true 
    
    deal 
end 

end 

