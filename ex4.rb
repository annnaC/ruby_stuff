cars = 100 # cars is 100
space_in_a_car = 4.0 #space_in_a_car is 4
drivers = 30 #drivers is 30 
passengers = 90; # etc
cars_not_driven = cars - drivers #calculates the number of cars not driven
cars_driven = drivers #calculates the number of cars driven
carpool_capacity = cars_driven * space_in_a_car #calculates the carpool capacity
average_passengers_per_car = passengers/cars_driven #calculates the number of passengers per car

puts "there are #{cars} available."
puts "there are only #{drivers} drivers available."
puts "there will be #{cars_not_driven} empty cars today."
puts "we can transport #{carpool_capacity} people today."
puts "we can have #{passengers} to car pool today."
puts "we need to put about #{average_passengers_per_car} people in each car." 
