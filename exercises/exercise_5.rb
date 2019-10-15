require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

totalRevenue = Stores.sum(:annual_revenue)
totalStores = Stores.all.count

puts "Total revenue: #{totalRevenue}"
puts "Average revenue: #{totalRevenue/totalStores}"

count = Stores.where('annual_revenue > ?', 1000000).count
puts "Number of stores that are generating $1M or more in annual sales:  #{count}"
