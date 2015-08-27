# more bears

require "./util.rb"

def gold_room
	puts "this room is full of gold. How much do you take?"
	
	print "> "
	choice = read

	#this line has a bug. fix it!
	if choice =~ /^-?\d+$/ 
		how_much = choice.to_i	
	else
		dead ("Man, learn how to type a number!")
	end

	if how_much < 50
		puts "Nice, you're not greedy. You win!"
		exit(0)
	else 
		dead ("You greedy bastard!")
	end
end

def bear_room
	puts "There is a bear in here."
	puts "The bear has a bunch of honey."
	puts "The fat bear is in front of another door."
	puts "How are you going to move the bear?"
	bear_moved = false

	while true
		print "> "
		choice = read

		if choice == "take honey"
			dead ("The bear looks at you and slaps your face off.")
			elsif choice == "taunt bear" && !bear_moved
				puts "The bear has moved its arse. You can go through the door now."
		        bear_moved = true
		    elsif choice == "taunt bear" && bear_moved
		    	puts "The bear gets pissed off and chews off your legs!"
	        elsif choice == "open door" && bear_moved
	        	gold_room
	        else
	        	puts "I've no idea what that means."		    					
		end
	end
end

def cthultu_room
	puts "Here you see the great evil Cthultu."
	puts "He, it, whatever stares at you and you go insane"
	puts "Do you flee for your life or eat your head?"

	print "> "
	choice = read

	if choice.include? "flee"
		start
		elsif choice.include? "head"
			dead("Well that was tasty!")
		else
			cthultu_room		
	end
end

def dead(why)
	puts why, "Good job!"
	exit(0)	
end

def start 
	puts "You are in a dark room."
	puts "There is a door to your right and left."
	puts "Which one do you take?"

	print "> "
	choice = read
	if choice == "left"
		bear_room
	elsif choice == "right"
		cthultu_room
	else 
		dead("You stumble around the room until you starve.")
	end
end

start