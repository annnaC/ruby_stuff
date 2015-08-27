# this is the bear_game
require "./util" # to get rid of the random functions that you repeat all the time we can put them into a function and call it late. Or even better (which is what we did here) create a new file (util.rb) where we can put a bunch of other functions what we need to use all the time

def bear_fight(bear)
    if bear == "1"
        puts "something"
    elsif bear == "2"
        puts "spmething"
    elsif bear == "3"
        puts "another"
    else
        print wall
    end
end

def bear_room(choice)
    wall = "Congratulations! you just hit the wall. Try again untill you find a door."
    if choice == "1"
        puts "You decided to fight the bear.
        How do you do that?
            1. Take the cake.
            2. Wait for the bear to finish the cake.
            3. Shout at the bear"
            bear_fight read
    elsif choice == "2"
        puts " something something else"
        # somthing else funtion
    elsif choice == "3"
        puts "another thing"
    else 
        print wall
    end
end

def start(door)
    if  door == "1"
    	puts "You've opened the blue door and steped into another room."
        puts "There is a bear in this room.
          He's eating a cheesecake in front of a door. 
          What do you do?
            1. Fight the bear.
            2. Go for the door on your right.
            3. Go for the door to your left."
    	bear_room read
    elsif door == "2"
        puts "You've opened the green door and steped into another room."
    	puts "The green doorknoob was poisoned! You feel weak."
        puts "There is a bear in this room.
          He's eating a cheesecake in front of a door. 
          What do you do?
            1. Fight the bear.
            2. Go for the door on your right.
            3. Go for the door to your left."
            bear_room read
    	#green_corridor function
        # live bar decreses by half a heart
    elsif door == "3"
    	puts "You've opened the red door and steped into another room."
    	puts "Auch! There was barb wire on this door. You're bledding!"
    	# life bar down by one heart
        #spmething with band aids
    else
    	puts "That's very smart of you! Just wait here in this corridor until you starve.\nTry again!"
    end
end




puts "You are in a corridor. \nThere're three doors: a blue one, a green one and a read one. \nWhich one do you open?\n1. Blue\n2. Green\n3. Red"
start read
#blue_door read





# if door == "1"
# 	puts """
# 	There's a giant bear there eating a cheesecake. What do you do?
#     1. Take the cake.
#     2. Scream at the bear.
# 	"""

#     bear_choice read

# elsif door == "2"
# 	puts "You stare into an endless abiss at Cthulhu's retina."
# 	puts "1. Blueberries"
# 	puts "2. Yellow jacket clothespins."
# 	puts "3. Understanting revolvers yelling melodies."

# 	insanity = read_number # we made a function that reads the input and converts it to i (in util.rb)

# 	if (insanity < 3) # we're getting rid of that very long condition we had in ex31.rb
# 		puts "Your body survives powered by a mind of jello. Good job!"
# 	else
# 	    puts "The insanity rots your eyse into a pool of muck. Good job!"
#     end
# else 
#     puts "You stumble around and fall on a knife and die. Fantastic job! You just killed yoursef!"
# end
# # if needs end and can have elsifs and elses in it. elsif and else can't be on their own