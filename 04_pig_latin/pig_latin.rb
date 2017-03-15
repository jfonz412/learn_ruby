#write your code here
def translate(word)
	if (word.include? ' ')
		multiWord(word)
	else
		oneWord(word)
	end
end


                       #--------------Funtion defs--------------#
#check for vowels
def isVowel(char)
	if (char == 'a') or (char =='e') or (char == 'i') or (char == 'o') or (char == 'u')
		return true
	else
		return false
	end
end

#One word function ***(MAIN FUNCTION)***
def oneWord(word)

	if (isVowel(word[0]) == true) #if word starts with value, just add "ay" to the end
		return word << "ay"
	end

	#copy consonants into temp[] until you find a vowel
	i = 0
	temp = []

	while (isVowel(word[i]) == false) do 
		temp[i] = word[i]
		if word[i+1] != nil
			word[i] = word[i+1]
		end
		i += 1
	end

	#check to see if last temp copied was a 'q'
	if temp[i-1] == 'q'
		temp[i] = 'u' #u will naturally follow
		i += 1        #advance i to make sure 'u' is deleted from orginal word
	end

	#chop off begining of word
	i.times do
		word[0] = ''
	end

	#finished product
	word = "#{word}" + "#{temp.join}" + "ay"
end

#multiple words
def multiWord(word)
	sentance = word.split
	size = sentance.length
	size.times do |i|
		sentance[i] = oneWord(sentance[i]) #run each word through oneWord function
	end
	sentance.join(' ')
end