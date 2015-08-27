def cheese_and_crackers(cheese_count, boxes_of_crackers)
	puts "you have #{cheese_count} types of cheese and #{boxes_of_crackers} boxes of crackers"
	puts "Loads. Let's get the party started!\n\n"
end

puts "we can just give the funtion numbers directly"
cheese_and_crackers(30,40)

puts "or we can use variables from our own script: "
amount_of_cheese = 20
crackers = 30
cheese_and_crackers(amount_of_cheese, crackers)

puts "we can do maths inside too."
cheese_and_crackers(10 + 15, 17 + 5)

puts "and we can combine the two: variables and maths: "
cheese_and_crackers(amount_of_cheese + 18, crackers + 19)

