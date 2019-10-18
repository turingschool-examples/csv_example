require 'CSV'
# require '../data/animal_lovers.csv'

# animal_rows = CSV.new(animal_lovers, headers: true)
#
# animal_rows.foreach('../data/animal_lovers.csv')

CSV.foreach('../data/animal_lovers.csv', headers: true) do |row|
    puts row
  end

CSV.foreach('../data/animal_lovers.csv', headers: true) do |row|
    puts row.inspect
  end
