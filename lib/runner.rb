require 'CSV'
require 'pry'
require './animal_lover'

CSV.foreach('../data/animal_lovers.csv') do |lover|
  id = lover[0]
  first_name = lover[1]
  last_name = lover[2]
  age = lover[3]
  animal_lover = AnimalLover.new(id, first_name, last_name, age)
  binding.pry
  puts animal_lover
end
