the_count = [1, 2, 3, 4, 5]
fruits = ['appeles', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

#the first type of for loop goes through a list
#in a more traditional style found on other languages
# for number in the_count
# 	puts "This is #{number}"
# end
the_count.each do |number| # this is the same as the for above. better to use .each
	puts "This is #{number}"
end

#now let's do a for-loop ruby style
#this and the next is how we like it in ruby
fruits.each do |fruit|
	puts "A type of fruit: #{fruit}"
end

# also we can go through mixed lists too
# this is another way, exactly like the one above
# but different syntax
change.each {|i| puts "I got #{i}" }

# we can also nuid lists, first start with an empty one
elements = []

# then use the range operator to do 0 to 5 counts
(0...5).each do |i|
	puts "adding #{i} to the list"
	# pushes the i variable at the *end* of the list
	#elements.push(i)
	elements << i # same thing as the line above
end

# now we can print them out too
elements.each{ |i| puts "Element was #{i}" }

