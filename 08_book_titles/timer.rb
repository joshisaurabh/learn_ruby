# while the code worked as required when i ruby is on cli though strangely is fails on 3rd test

# Rspec result below

# Timer
#   should initialize to 0 seconds  -PASS
#   time_string
#     should display 0 seconds as 00:00:00  - PASS
# 00:00:12    should display 12 seconds as 00:00:12 (FAILED - 1)

# Failures:

#   1) Timer time_string should display 12 seconds as 00:00:12
#      Failure/Error: @timer.time_string.should == "00:00:12"
#        expected: "00:00:12"
#             got: nil (using ==)
#      # ./08_book_titles/timer_spec.rb:26:in `block (3 levels) in <top (required)>'

# Finished in 0.00131 seconds
# 3 examples, 1 failure

# Failed examples:

# rspec ./08_book_titles/timer_spec.rb:24 # Timer time_string should display 12 seconds as 00:00:12

class Timer

  attr_accessor :seconds
  def initialize(seconds=0) 
  	@seconds = seconds
  end


# def seconds  # SJ - this passes the first test of initializing the instance of Timer to 0 seconds
# 	0
# end

  def time_string
  		timer_array=[]
  		timer_array<<(seconds/3600)
  		timer_array<<((seconds % 3600)/60)
  		timer_array<<((seconds%3600)%60)
  		display_array=[]
  		## display_array= timer_array.map{|i| i.map{|s| s.to_i}} 
  		## timer_array.map {|i| i.map {|s| s.to_i}} 
  		# puts timer_array
  		# puts "timer_array"
  		(timer_array).each do |x| 
                if x<10
				              display_array<<"0#{x}"
                 else
                      display_array<<x 
                end
            end
    # puts display_array
    # puts "display_array"
    if @seconds==0
      "00:00:00"
    else
      print display_array[0]
      print ":"
      print display_array[1]
      print ":"
      print display_array[2]
		## puts (display_array[0]+":"+display_array[1]+":"+display_array[2]).to_s
    end
  end
end

# time = Timer.new(4000)
# puts time.time_string

