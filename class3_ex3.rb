module Hatchback
	
	def has_hatchback(no_of_hatchback)
    	puts "Yes" if no_of_hatchback==1

	end


end





class Vehicle               #super class
	
	@@no_of_vehicle=0

	def self.no_of_vehicle
		puts "right now you have #{@@no_of_vehicle} vehicles!!!"

	end

	def self.gas_mile(gallon,mile)        
		puts "Status: #{mile/gallon} miles per gallon of gas"
	end

	def initialize 
		@@no_of_vehicle+=1
	end

end



class MyCar < Vehicle
	attr_accessor :color
	attr_reader :year

	PlateNum="2DE3333"

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


class MyTruck < Vehicle

   include Hatchback 

PlateNum="2DE5555"

end