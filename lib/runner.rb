require 'CSV'


CSV.foreach('./data/animal_lovers.csv') do |row|
  p row
end

CSV.foreach('./data/magical_pets.csv') do |row|
  p row
end
