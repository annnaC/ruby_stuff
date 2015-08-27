ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "There are not 10 things in that list. Let's fix that!"

stuff = ten_things.split(' ')
more_stuff = ["Day", "Night", "Song", " Frosbee", "Corn", "Banana", "Girl", "Boy"]

#using maths to make sure there are 10 items

# while stuff.length != 10
#   next_one = more_stuff.pop # pop more stuff as in call pop on more stuff or call pop with argument more_stuff
# 	puts "Adding: #{next_one}"
# 	stuff.push(next_one)
# 	puts "There are #{stuff.length} items now."
# end

stuff.each do more_stuff.pop # same thing as with while but with for  and if
	if stuff.length !=10
	next_one = more_stuff.pop
	puts "Adding: #{next_one}"
    stuff.push(next_one)
    puts "There are #{stuff.length} items now."
    end
end
puts "There we go: #{stuff}"

puts "Let's do some things with stuff!"

puts stuff[1]
puts stuff[-1] #fancy!
puts stuff.pop()
puts stuff.join(' ')
puts stuff[3..5].join('#') #[3..5] same as (3..5)