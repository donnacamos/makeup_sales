class MakeupSales::Scraper 
  
  def self.scrape_product 
    
    website = Nokogiri::HTML(open("https://www.ulta.com/promotion/sale"))
   # binding.pry 
     section = website.css("ul#foo16")
     products = section.css("li") 
    
   products.css("div.productQvContainer").each do |product| 
      brand = product.css("h4.prod-title").text.strip
      product_object = MakeupSales::Product.new(brand)
      product_object.description = product.css("p.prod-desc").text.strip
      product_object.sale_price = product.css("span.pro-new-price").text.strip
      product_object.previous_price = product.css("span.pro-old-price").text.strip
      product_object.url = "https://www.ulta.com" + product.css("a").attr("href").value 
    end 
  end 
  
  def self.scrape_product_details(product_object)
    website = Nokogiri::HTML(open(product_object.url))
   # binding.pry 
    product_object.more_info = website.css(".collapse.in").text.strip
  end 
   
end 
    
  
 

