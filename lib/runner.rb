require 'csv'
# rows = []
CSV.foreach('./data/animal_lovers.csv') do |row|
  p row
end
# (id, first_name, last_name, age)
