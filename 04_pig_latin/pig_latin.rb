
# def translate(string)
#   prefix = string[0, %w(a e i o u).map{|vowel| "#{string}aeiou".index(vowel)}.min]
#   "#{string[prefix.length..-1]}#{prefix}ay"
# end

def translate(string)
	swap = " "
	array = string.chars.to_ac
	new_arry = []
	#array.each do |letter| array[0] == 
		if array[0] == "a" || array[0] == "e" || array[0] == "i" || array[0] == "o" || array[0] == "u"
			string << "ay"
			return string
		else
		 	swap = array.shift
		 	 array << swap
		 	 array << "ay"
		 	return array.join
		end
		#if array[0] && array[1] != "a" || array[0] && array[1] != "i" || array[0] && array[1] != "o" || array[0] && array[1] != "u"
		if %w[array[0] array[1]].include?('a'||'e'||'i'||'o'||'u')

			 swap = array.shift
		 	 swap << array.shift
		 	 array << swap
		 	 array << "ay"
		 	return array.join
		end

	# end
end