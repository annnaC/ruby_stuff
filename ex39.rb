# hashes = dictionatries  

# create a map of states to abreviations
states = {
	'Oregon' => 'OR',
	'Florida'=> 'FL',
	'California' => 'CA',
	'New York' => 'NY',
	'Michigan' => 'MI'
}

# create a basinc set of states and citie in them
cities = {
	'CA' => 'San fancisco',
	'MI' => 'Detroit',
	'FL' => 'Jacksonville'
}

# add some more cities
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

# puts out some citeis
puts '-' * 10
puts "NY state has: #{cities['NY']}"
puts "Oregon state has: #{cities['OR']}"

#puts out some states
puts '-' * 10
puts "Michigan's abreviation is: #{states['Michigan']}"
puts "Florida's abreviation is: #{states['Florida']}"

# do it by using the state then cities dict
puts '-' * 10
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Florida has: #{cities[states['Florida']]}"

# puts every state abreviation
puts '-' * 10
states.each do |state, abbrev|
	puts "#{state} state is abbreviated #{abbrev}."
end

# puts every city in state
puts '-' * 10
cities.each do |abbrev, city|
	puts "#{abbrev} has #{city} city."
end

#now  do both at the same time
puts '-' * 10
states.each do |state, abbrev|
	city = cities[abbrev]
	puts "#{state} is abbreviated #{abbrev} and has the city #{city}."
end

puts '-' * 10
# default ruby says nil when something isn't there
state = states['Texas']

if !state
	puts "Sorry no Texas."
end

# default values using ||=  with the nil result
city = cities['TX']
city ||= "Does not exists."
puts "The city for the state 'TX' is: #{city}."
