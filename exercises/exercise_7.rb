require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "Please enter a store name" 
storeName = gets
newStore = Store.create(name: storeName)
puts newStore.errors
if(newStore.errors[:name])
  puts "Store #{newStore.errors[:name][0]}" 
end
if(newStore.errors[:annual_revenue])
  puts "Annual revenue #{newStore.errors[:annual_revenue][0]}" 
end
if(newStore.errors[:apparel_type])
  puts "Apparel #{newStore.errors[:apparel_type][0]}" 
end
