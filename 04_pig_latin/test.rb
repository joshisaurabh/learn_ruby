string="banana"
	swap = " "
	array = string.chars.to_a
	new_arry = []
	#array.each do |letter| array[0] == 
		if array[0] == "a" || array[0] == "e" || array[0] == "i" || array[0] == "o" || array[0] == "u"
			array[0]
			string << "ay"
			return string
			puts array[0]
		else
			puts "else condition ran"
		 	swap = array.shift 
		 	array << swap
		 	array << "ay" 
		 	puts array.join
		end
