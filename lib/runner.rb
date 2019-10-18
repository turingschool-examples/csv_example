require 'CSV'
require './lib/animal_lover.rb'



CSV.foreach("./data/animal_lovers.csv", return_headers: false, headers: :first_row,) do |row|
  # initial = AnimalLover.new(row[0], row[1], row[2], row[3])
  p row
end
