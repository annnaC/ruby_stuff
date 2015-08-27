require './ex21'

def username_and_password(username, password)
	puts "Username: #{username} "
	puts "Paasword: #{password}\n\n"
end

puts "we can just give the funtion names directly"
username_and_password("crocodile", "aligator")

puts "or we can use variables from our own script: "
username1 = "cow"
password1= "parrot"
username_and_password(username1, password1)

puts "we can do maths inside too."
username_and_password(10 + 15, 17 + 5)

#puts "can we read key board input?" # this is fine just a way of reading keyboard input; the onw bwlow is better tho

#username2 = $stdin.gets.chomp
#password2 = $stdin.gets.chomp
#username_and_password(username2, password2)
username = nil
password = nil

def get_username_and_password
	print "Username: "
	username = $stdin.gets.chomp
	print "Password: "
	password = $stdin.gets.chomp
	[username, password]
end

divide(10,100.0)
# u,p = get_username_and_password
# puts "\n---\n"
# username_and_password(u, p)


def do_this(a)
	puts "start #{a}"
	yield("this was passed to the block") #passes the blockh
	puts "end#{a}"
end

do_this(3) do |i| #this is a block : executes function wtih  e as an argument
	puts "block1#{i}"
	puts "block2#{i}"
end
do_this(12) { puts "block2" }
