class MakeupSales::Scraper 
  
  def self.scrape_product 
    
    website = Nokogiri::HTML(open("https://www.ulta.com/promotion/sale"))
    binding.pry 
     section = website.css("ul#foo16")
     products = section.css("li") 
    
   products.css("div.productQvContainer").each do |product| 
     product_object = Product.new(title) 
      product_object.title = product.css("h4.prod-title").text.strip
      product_object.brand = product.css("div.prod-title").text.strip
      product_object.sale_price = product.css("span.pro-new-price").text.strip
      product_object.previous_price = product.css("span.pro-old-price").text.strip
      product_object.description = product.css("div.ProductDetail_productContent collapse in").text.strip 
    end 
  end 
  
  def self.scrape_product_details(product_object) 
    website = Nokogiri::HTML(open(product_object.url)) 
  end 
   
end 
    
  
 

