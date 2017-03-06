class MyCar

	def initialize(year,color,model)
		@year=year
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

end

car=MyCar.new(2012,"Black","Versa")    #建立ㄧ個新物件

car.current_speed   #顯示目前車速

car.speed_up(50)  #加速到50mph

car.brake(30)   #減速30mph 

car.current_speed   #顯示目前車速

car.shut_down   #停車



