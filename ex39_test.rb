require './dict_39.rb'

# create a mapping of state to abreviation
states = Dict.new()
Dict.set(states, 'Oregon', 'OR')
Dict.set(states, 'Florida', 'FL')
Dict.set(states, 'California', 'CA')
Dict.set(states, 'New York', 'NY')
Dict.set(states, 'Michigan', 'MI')

#create a basic set of states and some cities in them
cities = Dict.new()
Dict.set(cities, 'CA', 'San Fancisco')
Dict.set(cities, 'MI', 'Detroit')
Dict.set(cities, 'FL', 'Jacksonville')

#add some more cities
Dict.set(cities, 'NY', 'New York')
Dict.set(cities, 'OR', 'Portland')

#put out some cities
puts '-' * 10
puts "NY state has #{Dict.get(cities, 'NY')}"
puts "OR state has #{Dict.get(cities, 'OR')}"

# puts some states
puts '-' * 10
puts "Michigan abreviation is #{Dict.get(states, 'Michigan')}"
puts "Florida abreviation is #{Dict.get(states, 'Florida')}"

# do it by using the state then city dict
puts '-' * 10
puts "Michigan has #{Dict.get(cities, Dict.get(states, 'Michigan'))}"
puts "Florida has #{Dict.get(cities, Dict.get(states, 'Florida'))}"

# puts every state abreviaiton
puts '-' * 10
Dict.list(states)

# puts every city in state
puts '-' * 10
Dict.list(cities)

puts '-' * 10
# by default ruby says nil when something isn't there
state = Dict.get(states, 'Texas')

if !state
	puts "Sorry, no Texas."
end

# default values using ||=  with the nil result
city = Dict.get(cities, 'TX', 'Does not exists')
puts "The city for the state 'TX' is: #{city}."