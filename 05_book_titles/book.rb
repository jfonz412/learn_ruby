class Book
	attr_accessor:title
	def title

		#check for multi word title
		if @title.include? ' '
			temp = @title.split
			temp[0].capitalize! #always cap first word

			#check for minor words
			size = temp.length
			size.times do |i|
				if minorWord(temp[i]) == false
					temp[i].capitalize!
				end
			end

			@title = temp.join(' ')
			
		else
			@title.capitalize
		end
	end
end

def minorWord(word)
	if word == "and" or word == "the" or word == "in" or word == "of" or word == "a" or word == "an"
		return true
	else
		return false
	end
end