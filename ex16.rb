filename = ARGV.first

puts "we're going to erase #{filename}"
puts "if you don't want that hit Crtl+C  (^C)"
puts "if you do want that hit RETURN"

$stdin.gets

puts "Openning the file...."
target = open(filename,'w')
target = open(filename, 'r')

puts "tuncating the file. Goodbye!"
target.truncate(0)

puts "now I'm going to ask you for three lines"

print "Line 1: "
line1 = $stdin.gets.chomp
print "Line 2: "
line2 = $stdin.gets.chomp
print "Line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file. "

target.write("#{line1}#{line2}\n#{line3}\n")
# target.write(line1)
# target.write(line2)
# target.write("\n")
# target.write(line3)
# arget.write("\n")

puts "Finally, I will close the file. "
target.close
