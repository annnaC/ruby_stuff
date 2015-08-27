=begin 
from_file, to_file = ARGV

puts "copy #{from_file} to #{to_file}"

#we could do these teo in one line. how?
#in_file = open(from_file)
#indata = in_file.read
in_file_size = File.size(from_file) # this thing is the same as the two lines before(6&7)

puts "The output file is #{in_file_size} bytes long"
#puts "The output file is #{indata.length} bytes long" # this one goes for lines 6&7

#puts "Does the output file exists #{File.exist?(to_file)}" #no need to print this out just check for it
File.exist?(to_file)
puts "ready, hit RETURN to continue and Ctrl C  to abort"
$stdin.gets

out_file = open(to_file,'w')
out_file.write (in_file_size)

puts "alright all done!"

out_file.close
in_file_size.close 
=end

# this is the same thing as in the above comments just shorter
# from_file, to_file = ARGV #run with arguments
# File.size(from_file);File.exist?(to_file);$stdin.gets #read file size, check is second file exists, read input from kepboard(enter for continue, Ctrl C for abort)
# out_file = open(to_file, 'w'); out_file.write(File.size(from_file)) # open new file ; write size of initial finale in it

#this is even shorter. actually all in one line. 
open(ARGV[1], 'w').write(File.size(ARGV[0])) if $stdin.gets.chomp == 'yes'
