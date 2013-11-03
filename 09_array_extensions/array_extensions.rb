class Array

	
	# def input
	# 	@input
	# end

	# def input= (input)
	# 	@input = 0
	# end

	# def sum(input=[])
	# 	a= input.to_a
	# 	if a.length ==0
	# 		return 0
	# 	else
	# 	a.each { |x| sum+=x }
	# 	return sum
	# 	end
	# end

	# # def sum
	# # 	return 0
	# # end	

	# def sum
	# 	return array.inject{|tot,x| tot + x }
	# end	

 def sum
   total = 0
   self.each {|temp_var| total += temp_var}
   return total
 end

def square
   self.map {|temp_var| temp_var ** 2}

end
 
 def square!
    self.map! {|temp_var| temp_var ** 2}  # using bang to square the original array
 
 end

end
	