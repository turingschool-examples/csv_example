require "csv"
require './lib/animal_lover'

CSV.foreach("./data/animal_lovers.csv") do |row|
  p row
end


# CSV.foreach("../data/animal_lovers.csv") do |row|
#   new_hash = AnimalLover.new(row[0], row[1], row[2], row[3])
#   holder_array << new_hash
# end
#
# p holder_array
