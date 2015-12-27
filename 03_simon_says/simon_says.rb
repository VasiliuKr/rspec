
def echo(greet)
	greet.to_s
end

def shout(greet)
    greet.upcase
end

def repeat(greet, n=2)
    ("#{greet} " * n).rstrip
end

def start_of_word(word, n)
    word[0..n-1]
end

def first_word(str)
    str.split[0]
end

def titleize(str)
	words = str.split
	words[0].capitalize!
	words.each do |word|
	    if word.length > 3 && word != "over"
	        word.capitalize!
	    end
	end
	words.join(" ")
end