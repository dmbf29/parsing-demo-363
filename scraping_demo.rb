require 'open-uri'
require 'nokogiri'

ingredient = 'duck'
url = "https://www.bbcgoodfood.com/search/recipes?query=#{ingredient}"

html_file = open(url).read # HTML
html_doc = Nokogiri::HTML(html_file) # Nokogiri objects (search through these)

# html element -> just the tag name
# class -> .class_name
# id -> #id_name

# html_doc.search('.teaser-item__title').each do |title_element|
#   puts title_element.text
# end


# html_doc.search('.teaser-item__text-content').each do |title_desc|
#   puts title_desc.text
# end

html_doc.search('.node-teaser-item').each_with_index do |recipe_card, index|
  title = recipe_card.search('.teaser-item__title').text
  description = recipe_card.search('.teaser-item__text-content').text
  puts "#{index + 1}.) #{title.strip}:"
  puts "> #{description.strip}"
end






