class MyCar
	attr_accessor :color
	attr_reader :year

	def initialize(color,model)
		@year=2012
		@color=color
		@model=model
		@current_speed=0
	end

	def current_speed                            #顯示目前速度
		puts "Your current speed is #{@current_speed} "

	end


	def speed_up(num)                            #可以加速num miles/hour
		@current_speed+=num
		puts "You just accelerated #{num} mph"

	end

	def brake(num)                              #可以減速num miles/hour
		@current_speed-=num
		puts "You just decelerated #{num} mph"
	end

	def shut_down                              #立刻停車

        @current_speed=0
        puts "You just parked ur car!!!"
    end

    def change_color(color)          #改顏色  
   		@color=color 
        puts "You just changed to color #{color}"
    end


end

car=MyCar.new("black","Versa")

car.change_color("green")

