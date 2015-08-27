# reading some code exercise

require 'open-uri'

WORD_URL = "http://learncodethehardway.org/words.txt"
WORDS = []

PHRASES = {
	"class ### < ### \nend" =>
	     "make a class named ### that is -a ###.",
    "class ### \n\tdef initialize (@@@)\n\tend\nend" => 
          "class ### has -a initialize that takes @@@ parameters",
    "class ### \n\tdef ***(@@@)\n\tend\nend" => 
          "class ### has a funtion named *** that takes @@@ parameters",
    "*** = ###.new()" =>
          "set *** to an instance of class ###.",
    "***.***(@@@)" =>
          "so from *** get *** function and call it with parameter @@@",
    "***.*** = '***'" =>      
          "from *** get the *** atribute and set it to '***'."
}

PHRASE_FIRST = ARGV[0] == 'english'

open(WORD_URL) { |f|
    f.each_line {|word| WORDS.push(word.chomp)}
}

def crafft_names (rand_words, snippet, patern, caps=false)
	names = snippet.scan(patern).map do
    word = rand_words.pop()
    caps ? word.capitalize : word		
	end
	return names * 2
end

def craft_params(rand_words, snippet, patern)
	names = (0...snippet.scan(patern).length).map do
		param_count = rand(3) + 1
		params = (0...param_count).map {|x| rand_words.pop()}
		params.join(' ,')
	end
	return names * 2
end

def convert(snippet, phrase)
	rand_words = WORDS.sort_by {rand} 
	class_names = crafft_names(rand_words, snippet, /###/, caps=true)
	other_names = crafft_names(rand_words, snippet, /\*\*\*/)
	param_names = craft_params(rand_words, snippet, /@@@/)

	results = []

	[snippet, phrase].each do |sentence|
		# fake class name also copies senctence
		result = sentence.gsub(/###/) {|x| class_names.pop}
		# fake other names
		result.gsub!(/\*\*\*/) {|x| other_names.pop}
		#fake parameter list
        result.gsub!(/@@@/) {|x| param_names.pop}

        results.push(result)
    end

    return results
end

# keef going until they hit Ctrl-D
loop do
	snippets = PHRASES.keys().sort_by {rand}
	for snippet in snippets
		phrase = PHRASES[snippet]
		question, answer = convert(snippet, phrase)

	if PHRASE_FIRST
		question, answer = answer, question
	end

	print question, "\nHit enter for answer:\n> "
	$stdin.gets
    puts "\nAnswer: #{answer}\n"	
    print "\nEnter 'exit' to quit, anything else will give another example:\n>"
    exit(0) if $stdin.gets.chomp == 'exit'
	end
end
