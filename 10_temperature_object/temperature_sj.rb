class Temperature

	def initialize(opty={})
		@options = opty
	end

	def to_fahrenheit
		if @options[:f] 
			@options[:f]
		else
			(@options[:c] * (9.0 / 5)) + 32
		end
	end

	def to_celsius
		if @options[:c] 
			@options[:c]
		else
			(@options[:f]-32)*5.0/9
		end
	end
end

ft=Temperature.new
puts ft.to_fahrenheit
puts ft.to_celcius
