formatter = "%{first} %{second} %{third} %{forth}"
puts formatter % {first: 1, second: 2, third: 3, forth: 4}
puts formatter % {first: "one", second: "second", third: "third", forth: "forth"}
puts formatter % {first: true, second: false, third: true, forth:false}
puts formatter % {first: formatter, second: formatter, third: formatter, forth: formatter} #puts the formatter inside the formatter

puts formatter % {
first: "I had this thing.",
second: "That you could type out right.",
third: "But it didn't sing.",
forth: "So I said goodnight!" 
}
