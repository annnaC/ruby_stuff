def add (a,b) # this funtion adds stuff
	puts "ADDING #{a} + #{b}" #it prints that it adds whatever  values (45 and 78 in this case)
	return a + b 
end

def substract(a,b)
	puts "SUBSTRACTING #{a} - #{b}"
	a - b # still retunrs the value even though the word "return" is not there
end

def multiply(a,b)
	puts "MULTIPLY #{a} * #{b}"
	return a * b
end

def divide(a,b)
	puts "DIVIDE #{a} / #{b}"
	return a / b
end

puts "Let's do some maths with just functions. "

age = add(45,78) # put the addition into a variable that we use later on
height = substract(5,3)
weight = multiply(6,5)
iq = divide(9,3)

puts "age: #{age}, height: #{height}, weight: #{weight}, iq: #{iq}"

# a puzzle for extra credit, type it anyway.
puts "Here is the puzzle: "
what = add(age, substract(height, multiply(weight,divide(iq,2))))
puts "that becomes #{what}. Can you do it by hand?"