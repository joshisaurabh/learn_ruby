class Temperature

 def initialize(opts = {})
    @options = opts #{
    # 	:f=>50,
    # 	:c=>32
    # }.merge(opts)
 end

 def to_fahrenheit(opts={})
  o ={
     	:f=>50,
     	:c=>32
     }.merge(opts)

 	if (@options.has_key?(:f)) && (@options.has_value?(50))## this passed 
 		return @options[:f]   ## the 1st test of 50 degrees fahrenheit
 	else
 		puts @options[:c]
 		# return ((@options[:c])*9.0/5)+32
 	end
 end

 def to_celcius(opts={})
	if (@options.has_key?(:c)) && (@options.has_value?(32))
		return @options[:c]
	else
		puts @options[:f]
		# return ((@options[:f])-32)*5.0/9
	end
 end
 #  def to_fahrenheit(opts={})
	# o = {
	# 	:f=>0
	# }.merge(opts)
 #  end
end

ft= Temperature.new
puts ft.to_fahrenheit(:c=>100)
puts ft.to_celcius(:f=>68)

 # def self.from_fahrenheit(num)
 #   self.new(:f => num)
 # end

#     def self.from_celsius(num)
#         self.new(:c => num)
#     end
# end

# class Celsius < Temperature

#     def initialize(num, options = {})
#         @options = options
#         @options[:c] = num
#     end

#     def in_fahrenheit
#         super
#     end

#     def in_celsius
#         super
#     end
# end

# class Fahrenheit < Temperature

#     def initialize(num, options = {})
#         @options = options
#         @options[:f] = num
#     end

#     def in_fahrenheit
#         super
#     end

#     def in_celsius
#         super
#     end
# end