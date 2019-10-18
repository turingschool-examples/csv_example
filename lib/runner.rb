require 'CSV'
require './lib/animal_lover.rb'

CSV.foreach("./data/animal_lovers.csv") do |row|
  require "pry"; binding.pry
end
