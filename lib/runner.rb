require 'CSV'
require './lib/animal_lover'
require './lib/magical_pet'
# headers: true & header_converter: :symbol are optional arguments
CSV.foreach('./data/animal_lovers.csv', headers: true, header_converters: :symbol) do |row|
  id = row[:id].to_i
  first_name = row[:first_name]
  last_name = row[:last_name]
  age = row[:age].to_i
  animal_lover = AnimalLover.new(id,first_name,last_name,age)

  puts "#{animal_lover.full_name} has been created!"
end

CSV.foreach('./data/magical_pets.csv', headers: true, header_converters: :symbol) do |row|
  id = row[:id].to_i
  name = row[:name]
  pet_owner_id = row[:pet_owner_id].to_i
  magical_pets = MagicalPet.new(id,name,pet_owner_id)

  puts "#{magical_pets.name_create} has been created!"
end
