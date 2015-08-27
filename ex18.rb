# this is similar to ARGV
def print_two (*args)
	arg1, arg2 = args
	puts "arg1: #{arg1}, arg2: #{arg2}"
end

#so *args is pointless. this can be done better
def prind_two_better (arg1,arg2)
	puts "arg1: #{arg1}, arg2: #{arg2}"
end

# this one takes just one argument
def print_one(arg)
	puts "arg: #{arg}"
end

# and this one does nothing
def print_nothing()
	puts "I got nothin'."
end

print_two("ana","mere")
prind_two_better("ana","mere")
print_one('o so cool!')
print_nothing()