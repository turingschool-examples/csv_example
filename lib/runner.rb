require 'csv'
require './animal_lover.rb'

holder_array = []

CSV.foreach('../data/animal_lovers.csv', headers:true, header_converters) do |row|
  new_hash = AnimalLover.new(row[0], row[1], row[2], row[3])
  holder_array << new_hash
end

p holder_array
