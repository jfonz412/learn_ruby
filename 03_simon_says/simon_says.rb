#write your code here
def echo(word)
	"#{word}"
end

def shout(word)
	word = word.upcase
	"#{word}"
end

def repeat(word,i=2)
		answer = "#{word} "*i
		answer.strip #removes leading and trailing whitespace
end

def start_of_word(word,x)
	x = x-1
	word[0..x]
end

def first_word(sentance)
	words = sentance.split() #splits sentance into an array of words
	words[0]
end

def titleize(title)
	new_title = title.split
	size = new_title.length

	size.times do |a|
		if a == 0
			new_title[a].capitalize!
		end

		if new_title[a] != "and" and new_title[a] != "the" and new_title[a] != "over"
			new_title[a].capitalize!
		end
	end

	new_title.join(' ')
end