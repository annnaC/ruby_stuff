# this is a mess fix it later
#file_name = ARGV.first
puts "Type a file name: "
file_name = $stdin.gets.chomp
puts "Here's your file #{file_name}: "
text = open(file_name)
print text.read

print "Type the file name again: "
file_again = $stdin.gets.chomp

text_again = open(file_again)
puts text_again.read
