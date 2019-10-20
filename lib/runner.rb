require 'CSV'
# headers: true & header_converter: :symbol are optional arguments
CSV.foreach('./data/animal_lovers.csv', headers: true, header_converters: :symbol) do |row|
  require 'pry'; binding.pry
end
