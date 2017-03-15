#write your code here
def translate(word)
	size = word.length
	if word.start_with?('a','e','i','o','u') == true
		word << "ay"
	else
		temp = word[0]
		size.times do |a|
			if word[a+1] != nil
				word[a] = word[a+1]
			end
		end
		word[-1] = temp
		word <<"ay"
	end

end

