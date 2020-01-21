require 'json'

# TODO - let's read/write data from beers.json
filepath    = 'data/beers.json'

serialized_beers = File.read(filepath) #JSON string

beers_collection = JSON.parse(serialized_beers) # turn it into a ruby hash

beers_collection['beers'].each do |beer| # beer hash
  "#{beer['name']} is from #{beer['origin']} and is #{beer['appearance']}"
end

belgian_beers = beers_collection['beers'].select do |beer|
  beer['origin'] == "Belgium"
end

p belgian_beers
