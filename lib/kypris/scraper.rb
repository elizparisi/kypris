class Scraper
  
  def self.scrape_page(scrape_url)
    product_page = Nokogiri::HTML(open(scrape_url))
    product_array = []
    product_page.css("https://shop.kyprisbeauty.com/").each do |product|
      product_hash = { :name => anime.css("p.title-text a.link-title").text.strip,
      :price => anime.css("div.eps a span").text.strip,
      :url => anime.css("span.member.fl-r").text.strip,
      :description => anime.css("span.preline").text.strip
                   }
      product_array << product_hash
      end
    product_array
  end
end