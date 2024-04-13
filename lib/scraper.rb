require 'nokogiri'
require 'open-uri'


def scrape(keyword)
  etsy_gifts = {
    # gift_name => false
  }
  # filepath = "results.html"
  # 1. We get the HTML page content
  # html_content = File.open(filepath)
  html_content = URI.open("https://www.etsy.com/search?q=#{keyword}").read
  # 2. We build a Nokogiri document from this file
  doc = Nokogiri::HTML.parse(html_content)

  # 3. We search for the correct elements containing the items' title in our HTML doc
  doc.search('.v2-listing-card__info .v2-listing-card__title').first(5).each do |element|
    # 4. For each item found, we extract its title and print it
    # Create new key value pair in the hash
    etsy_gifts[element.text.strip.split(" ").first(4).join(" ")] = false
  end
  # hash with 5 things
  etsy_gifts
end

# p scrape("gloves")
