require "open-uri"
require "nokogiri"
require_relative "recipe"

class Scrapper

  def initialize(ingredient)
    @ingredient = ingredient
  end

  def call
    # avoir une url
    url = "https://www.allrecipes.com/search/results/?search=#{@ingredient}"
    html = URI.open(url).read
    doc =  Nokogiri::HTML(html, nil, 'utf-8')
    results = []
    doc.search(".card__recipe").first(5).each do |element|
      name = element.search(".card__title").text.strip
      description = element.search(".card__summary").text.strip
      results << Recipe.new(name: name, description: description)
    end
    results
  end
end