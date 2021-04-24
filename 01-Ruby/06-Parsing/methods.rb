require 'nokogiri'
require 'amazing_print'
require 'open-uri'
require 'csv'
require 'pry'

def local_scraper_etsy
  filepath = "results.html"
  # 1. We get the HTML page content
  html_content = File.open(filepath)
  # 2. We build a Nokogiri document from this file
  doc = Nokogiri::HTML(html_content)

  # 3. We search for the correct elements containing the items' title in our HTML doc
  # 4. For each item found, we extract its title and print it
  doc.
    search('.v2-listing-card .v2-listing-card__info .text-body').
    map { |element| element.text.strip }.first(4)
end

def scraper_etsy(article)
  html_content = URI.open("https://www.etsy.com/search?q=#{article}").read
  doc = Nokogiri::HTML(html_content)

  # 3. We search for the correct elements containing the items' title in our HTML doc
  # 4. For each item found, we extract its title and print it
  doc.
    search('.v2-listing-card .v2-listing-card__info .text-body').
    map { |element| element.text.strip }.first(4)
end

def load_csv
  csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
  filepath    = 'gift_list.csv'

  gift_list = []
  CSV.foreach(filepath, csv_options) do |row|
    gift_list << { name: row["name"], bought: row["bought"] == 'true' }
  end

  return gift_list
end

def save_csv(gift_list)
  csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
  filepath    = 'gift_list.csv'

  CSV.open(filepath, 'wb', csv_options) do |csv|
    # We had headers to the CSV
    csv << ['name', 'bought']
    gift_list.each do |gift|
      csv << [gift[:name], gift[:bought]]
    end
  end
end

# ap scraper_etsy('pony')
