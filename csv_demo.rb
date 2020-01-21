require 'csv'

# TODO - let's read/write data from beers.csv
filepath = 'data/beers.csv'
csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }


# counter = 0
beers = []
CSV.foreach(filepath, csv_options) do |row|
  # counter += 1
  # next if counter == 1
  beers << [row['Name'], row['Appearance'], row['Origin']]
  puts "Loading..."
  puts "#{row['Name']} is from #{row['Origin']} and is #{row['Appearance']}"
end
p beers

csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
filepath    = 'beers.csv'

CSV.open(filepath, 'wb', csv_options) do |csv|
  csv << ['Name', 'Appearance', 'Origin']
  csv << ['Asahi', 'Pale Lager', 'Japan']
  csv << ['Guinness', 'Stout', 'Ireland']
  beers.each do |beer_array|
    csv << beer_array
  end
end
