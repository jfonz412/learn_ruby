class Timer
  	attr_accessor:seconds
  	def seconds
  		@seconds = 0
	end

	def time_string
		#initialize time string
		@time_string = "00:00:00"

		@seconds = clockAdjust(@seconds)
  		sec_size = @seconds.to_s.length

		if sec_size > 1
			array_cut = 7-sec_size
			@time_string = @time_string.slice(0..array_cut)
			@time_string = @time_string + @seconds.to_s
		else
			@time_string
		end
	end
end


def clockAdjust(seconds)
	minutes = 0
	hours = 0
	secs = seconds #temp variable

	#while the number of seconds exceeds a minute
	while secs > 59
  		secs -= 60 #subtract 60 seconds
  		minutes += 1 #add a minute

  		#check to make sure minutes doesn't go over 60
  		if minutes > 59
  			minutes = 0
  			hours += 1
  		end
  	end

  	#adjust tens places
  	if secs < 10
  		secs = "0" + secs.to_s
  	end
  	if minutes < 10
  		minutes = "0" + minutes.to_s
  	end
  	#return the minutes plus the seconds as a string
  	if minutes == 0
  		seconds = secs.to_s

  	elsif hours == 0
  		seconds = minutes.to_s + ":" + secs.to_s

  	else
  		seconds = hours.to_s + ":" + minutes.to_s + ":" + secs.to_s
  	end

end