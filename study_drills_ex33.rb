# this are the study drills in ex 33

require "./util.rb"

# this does the same as ex33 but it does it in a little function that we call later

	# def push_number_to_array(i)
	# 	#number = read()
	# 	number = []
	#     i = 0
	# 	while i <= 6 # this is the condition. so the loop runs until i<=6 (in other owrds i=7)
	# 	"At the top i is #{i}"
	# 	number.push(i) #put number/numbers in the array

	# 	i += 1 # increment i
	#     end
	#     number.each{|num| puts num}
	#     #sputs "Numbers now: ", number #see how many numbers we have now
	#     puts "At the buttom of i is #{i}" # check to see if we meet the inital condition
	# end

	# push_number_to_array (6)

# now we're doing the same thing but i can be anything, in this case it will be a random keyboard number

	# def push_number_to_array()
	# 	number = []
	# 	number_I_give = read()
	#     i = 0
	# 	while i <= number_I_give.to_i # this is the condition. so the loop runs until i<=6 (in other owrds i=7)
	# 	"At the top i is #{i}"
	# 	number.push(i) #put number/numbers in the array

	# 	i += 2 # increment i (I changed from 1 to 2)
	#     end
	#     number.each{|num| puts num}
	#     #sputs "Numbers now: ", number #see how many numbers we have now
	#     puts "At the buttom of i is #{i}" # check to see if we meet the inital condition
	# end

	#push_number_to_array

# now we do this again with for loops

def push_number_to_array()
	elements = []
    (0..5).each do |i|
    	#i += 2 # we don't like this cos it skips the 0
	#puts "adding #{i} to the list"
	# pushes the i variable at the *end* of the list
	#elements.push(i)
	elements << i # same thing as the line above
	elements.each{ |i| puts "Element was #{i}" }
    end
end

push_number_to_array