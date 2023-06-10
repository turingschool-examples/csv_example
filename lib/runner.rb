# Read and use the ruby docs for CSV found here [https://ruby-doc.org/stdlib-2.6.5/libdoc/csv/rdoc/CSV.html]
# Within the runner.rb file, write some code that will print each row from animal_lovers.csv to the terminal.
# When you’ve been able to print each row, then see if you can also print the header with the value for each row.

# If you are stuck, reference this page for help: https://backend.turing.edu/module1/lessons/csv_walkthrough

require 'CSV'
require './lib/animal_lover.rb'
require './lib/magical_pet.rb'
#arr_of_rows = CSV.read("data/animal_lovers.csv")
#Below is an array with each row as another array
#p arr_of_rows


#Below is an array to represent each row printed on its own line
# arr_of_rows.each do |row|
#     p row
# end

# #every item on its own line, no arrays
# arr_of_rows.each do |row|
#     puts row
# end

#prints each row not as an array
# CSV.foreach("data/animal_lovers.csv", headers: true) do |row|
#     print row
# end

#print #csv object? prints header with each object one row at a time
# CSV.foreach("data/animal_lovers.csv", headers: true) do |row|
#     p row
# end

CSV.foreach("data/animal_lovers.csv", headers: true, header_converters: :symbol) do |row|
    id = row[:id].to_i
    first_name = row[:first_name]
    last_name = row[:last_name]
    age = row[:age].to_i
    animal_lover = AnimalLover.new(id, first_name, last_name, age)

    puts "#{animal_lover.first_name} has been created!"
end

CSV.foreach("data/magical_pets.csv", headers: true, header_converters: :symbol) do |row|
    id = row[:id].to_i
    name = row[:name]
    pet_owner_id = row[:pet_owner_id].to_i

    pet = MagicalPet.new(id, name, pet_owner_id)

    puts "#{pet.name} has been created!"
end
