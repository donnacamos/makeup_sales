class MakeupSales::Product
  
  attr_accessor :name, :page_number, :brand, :url, :sale_price, :previous_price, :description  
  
  @@all = [] 
  
    def self.new_from_index_page(p)
    self.new(
      p.css("h2").text,
      "https://www.ulta.com/promotion/sale#{p.css("a").attribute("href").text}",
      p.css("h3").text,
      p.css(".position").text
      )
  end

  def initialize(name=nil, url=nil, page_number=nil)
    @name = name
    @url = url
    @page_number = page_number 
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find(id)
    self.all[id-1]
  end

  def brand 
    @brand ||= doc.css().text
   
  end

  def sale_price
    @sale_price ||= doc.css().text
  end

  def previous_price
    @previous_price ||= doc.css().text
    
  end

  def url
    @url ||= doc.css().text
    
  end

  def description
    @description ||= doc.css().text
    
  end

  def doc
    @doc ||= Nokogiri::HTML(open(self.url))
  end
  
end 