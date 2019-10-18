require 'CSV'
require './lib/magical_pet'
# CSV.foreach("./data/animal_lovers.csv", {headers: true}) do |row|
#   p row
# end

object_array = []
CSV.foreach("./data/magical_pets.csv", {headers: true}) do |row|
  require 'pry';binding.pry
  object_array << MagicalPet.new(*row.to_s.strip.split(","))
end

puts object_array