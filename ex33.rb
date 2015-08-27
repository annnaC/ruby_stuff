i = 0
numbers = []

while i <= 6 # this is the condition. so the loop runs until i<=6 (in other owrds i=7)
	"At the top i is #{i}"
	numbers.push(i) #put number/numbers in the array

	i += 1 # increment i
	puts "Numbers now: ", numbers #see how many numbers we have now
	puts "At the buttom of i is #{i}" # check to see if we meet the inital condition
end

puts "The numbers: "

# remember you can write this two other ways?
numbers.each {|num| puts num} #the final result