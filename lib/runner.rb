require 'csv'
require 'pry'

@data = []

#csv = CSV.new(, **options)

# arr_of_rows = CSV.foreach('./data/animal_lovers.csv') do |line|
#   puts line[0]
# end
# Used headers: true, header_converts: :symbol
pet_array = CSV.foreach('./data/magical_pets.csv') do |line|
  puts line
end



# arr_of_rows = CSV.read('./data/animal_lovers.csv', **options)
# arr_of_rows = CSV.parse('./data/animal_lovers.csv', **options)
# puts arr_of_rows
# puts @data
