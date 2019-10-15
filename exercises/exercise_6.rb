require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1 = Store.find_by(id: 1)
@store2 = Store.find_by(id: 2)

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "John", last_name: "Phillips", hourly_rate: 50)
@store2.employees.create(first_name: "Sally", last_name: "Piazza", hourly_rate: 30)
@store2.employees.create(first_name: "Ron", last_name: "Cornello", hourly_rate: 50)
@store2.employees.create(first_name: "Kevin", last_name: "Trivs", hourly_rate: 60)
