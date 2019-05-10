module MakeupSales
class Scraper 
  
  def self.scrape_product 
    url = "https://www.ulta.com/promotion/sale"
    
    website = Nokogiri::HTML(open(url))
    
    section = website.css("div#search-prod.liquid") 
    
    products = section.css("li").text 
    
    products.each do |product| 
      product_object = Product.new 
      product_object.title = product.css("h4.prod-title").text
     # product_object.brand = product.css("div.prod-title").text
    #  product_object.sale_price = product.css("span.pro-new-price").text
    #  product_object.previous_price = product.css("span.pro-old-price").text
    #  product_object.description = product.css("div.ProductDetail_productContent collapse in").text
    #  product_object.url = "https://www.ulta.com" 
    end 
  end 
  
 # def self.scrape_product_details(product_object) 
  #  website = Nokogiri::HTML(open(product_object.url)) 
  #end 
   
end 
end     
  
 

