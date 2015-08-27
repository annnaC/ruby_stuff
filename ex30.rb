people = 30
cars = 20
trucks = 15

if cars > people
	puts "We should take the cars."
elsif cars < people
		puts "We hould not take the cars"
else
		puts "We can't decide! "
end

if trucks > cars
	puts "That's too many trucks!"
elsif trucks < cars
	puts "Maybe we could take the trucks."
else
	puts "We still can't decide!"
end

if people > trucks
	puts "Alright, let's just take the trucks."
else
    puts "Fine, let's just stay at home!"
end

if cars > people || trucks < cars
	puts "Let's  take the cars."
else puts "Take the trucks."
end

		
    