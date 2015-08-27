first, second =  ARGV
user_name = ARGV.first, second

prompt = "insert here: "

puts "Hi, #{user_name}."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user_name}? ", prompt
likes = $stdin.gets.chomp

puts "Where do you live #{user_name}? ", prompt
lives = $stdin.gets.chomp

puts "What kind of computer do you hace #{user_name}? ", prompt
computer = $stdin.gets.chomp

puts """
Alright, so you said #{likes} about liking me. 
You said you live in #{lives}. Not quite sure where that is.
And you said you have a #{computer}. Neat!
"""