# this code is the niceer version of ex31.rb 
require "./util" # to get rid of the random functions that you repeat all the time we can put them into a function and call it late. Or even better (which is what we did here) create a new file (util.rb) where we can put a bunch of other functions what we need to use all the time

def bear_choice(choice) # here we took all the oprions we're just making a funtion with all of them that we can call later
    if choice == "1"
    	puts "The bear eats your face off. Good job!"
    elsif choice == "2"
    	puts "The bear eats your legs off. Good job!"
    else
    	puts "Well doing %s is probably better. The bear runs away and leaves the cake behind." %bear
    end
end

puts "You enter a dark room with two doors. Do you go through door #1 or door #2?"

door = read # we're just calling the funtion read which we put in util.rb

if door == "1"
	puts """
	There's a giant bear there eating a cheesecake. What do you do?
    1. Take the cake.
    2. Scream at the bear.
	"""

    bear_choice read

elsif door == "2"
	puts "You stare into an endless abiss at Cthulhu's retina."
	puts "1. Blueberries"
	puts "2. Yellow jacket clothespins."
	puts "3. Understanting revolvers yelling melodies."

	insanity = read_number # we made a function that reads the input and converts it to i (in util.rb)

	if (insanity < 3) # we're getting rid of that very long condition we had in ex31.rb
		puts "Your body survives powered by a mind of jello. Good job!"
	else
	    puts "The insanity rots your eyse into a pool of muck. Good job!"
    end
else 
    puts "You stumble around and fall on a knife and die. Fantastic job! You just killed yoursef!"
end
# if needs end and can have elsifs and elses in it. elsif and else can't be on their own