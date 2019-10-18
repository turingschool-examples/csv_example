 require 'csv'
# require './lib/animal_lovers.csv'

#animal_lovers = CSV.read("animal_lovers.csv")

CSV.foreach("./data/animal_lovers.csv") do |row|
  p row.join(", ")
end

row_array = []
CSV.foreach("./data/animal_lovers.csv") do |row|
  row_array << row
  require "pry"; binding.pry
end

#below is the example for getting objects from rows
row_array = []
CSV.foreach ("./data/animal_lovers.csv") do |row|
  new_hash = AnimalLover.new(row[0], row[1], row[2], row[3])
  holder_array << new_hash
end
p row_array

#below is amy's example
CSV.foreach('./data/animal_lovers.csv', headers: true, header_convert
  id = row[:id]
  first = row[:first_name]
  last = row[:last_name]
  age = row[:age]
)
