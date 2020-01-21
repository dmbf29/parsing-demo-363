require 'json'
require 'open-uri'

# TODO - Let's fetch name and bio from a given GitHub username
url = 'https://swapi.co/api/people/3/?format=json'

json_file = open(url).read
character = JSON.parse(json_file) # turns into a hash!

puts "Character Info:"
puts "Name: #{character['name']}"
puts "Year: #{character['birth_year']}"
puts "Eye color: #{character['eye_color']}"
