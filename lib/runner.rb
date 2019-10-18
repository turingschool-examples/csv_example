require 'csv'
require './lib/animal_lover'

holder_array = []

CSV.foreach("./data/animal_lovers.csv") do |row|
  new_hash = AnimalLover.new(row[0], row[1], row[2], row[3])
  holder_array << new_hash
end

p holder_array






#rainbow-csv
