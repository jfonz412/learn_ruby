#write your code here
def add(a,b)
 c = a + b
end

def subtract(a,b)
	c = a - b 
end

def sum(array) #does not work
	sum = 0
	if array == []
		sum = 0
	else
		array.each do |i|
			i = i.to_i
			sum +=i
		end
	end
	answer = sum
end

def multiply(a,b,c=1)
	if ARGV.length == 2
		d = a*b
	else
		d = a*b*c
	end
end