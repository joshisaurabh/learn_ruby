def echo(greeting)
	return greeting
end

def shout(greeting)
	return greeting.upcase
end

def repeat(string, num=2)
	num.times.collect { string }.join(' ')
end

def start_of_word(string, num_of_letters)
	"#{string}"[0,num_of_letters]
end

def first_word(string)
	string.split[0...1].join(' ')
end

def titleize(string)
  split_string = string.split
  split_string.each_index do |index|
    	split_string[index].capitalize! unless ["the", "and", "over"].include?(split_string[index])
  end
  split_string.first.capitalize!
  split_string.join(' ') 
end
