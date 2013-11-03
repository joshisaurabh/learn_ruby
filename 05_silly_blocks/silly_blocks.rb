

def reverser
	word = yield
	temp =[]
	temp = word.split.to_a
	if temp.count >1 
	temp[0].reverse + " " + temp[1].reverse 
else
	word.reverse
	end
end

# def adder
#  num = yield
#  num+1	
# end

# def adder
#  num=yield
#  if num==0
#  num+1
# else
# 	num+3
#  end
# end


def adder(num=1, &block)
  block.call + num
end 


# def repeater(x=0)
#   if x == 0
#     return yield
#   else
#     x.times do |n|
#       n += 1
#     end
#   end
# end


def repeater(n=1, &block)
  n.times &block
end



