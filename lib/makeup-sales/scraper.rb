class MakeupSales::Scraper 
  
  def get_page 
    Nokogiri::HTML(open("https://www.ulta.com/promotion/sale")) 
  end 
  
  def scrape_products_index
      self.get_page.css("option#/promotion/sale?N=1z13uvl&amp;No=0&amp;Nrpp=98")
  end 
   
end 
    
  
 

