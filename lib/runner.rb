require './lib/animal_lovers'
require 'csv'
# rows = {}
characters = CSV.foreach("./data/animal_lovers.csv") do |row|
  p row
   # rows << row
 end

# p rows



# require "pry"; binding.pry
# characters.each do |item|
#   p item
# end

# header = characters.shift
# require "pry"; binding.pry

# index = items.map do |item|
#   item.shift
# end


#  x = header.reduce({}) do |hogwarts, heading|
#   count = 0
#   hogwarts[heading] = items[count]
#   count += 1
#   hogwarts
# end
# # p x
# require "pry"; binding.pry
