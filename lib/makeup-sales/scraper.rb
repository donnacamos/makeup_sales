module MakeupSales
class Scraper 
  
  def self.scrape_product 
    
    website = Nokogiri::HTML(open("https://www.ulta.com/promotion/sale"))
   # binding.pry 
     section = website.css("ul#foo16") 
     products = section.css("li") 
    
   products.css("div.product-category-container").each do |product| 
      title = product.css("h4.prod-title").text
      brand = product.css("div.prod-title").text
      sale_price = product.css("span.pro-new-price").text
      previous_price = product.css("span.pro-old-price").text
      description = product.css("div.ProductDetail_productContent collapse in").text
    end 
  end 
  
  def self.scrape_product_details(product_object) 
    website = Nokogiri::HTML(open(product_object.url)) 
  end 
   
end 
end     
  
 

