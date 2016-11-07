#2. Das Fahrzeug kann beschleunigen. Die Methode beschleunien bekommt eie
 class Car

	attr_accessor :verbrauch
	attr_reader :typ, :ps

	def initialize(ps, typ="")
		@ps = ps
		@typ = typ
	end

		def beschleunigen(zeit)

			speed = ps * zeit / 100
			convert_to_kmh(speed).to_s + "km/h"

		end

		def ps=(ps)
			@ps = ps if ps > 0 
		end


		def typ=(typ)
			
			if !typ.is_a?(String)
				puts "war kein String"
			elsif typ.size < 3
				puts "String zu kurz"
			else
				@typ = typ.capitalize
			end		

		end	

	private
			def convert_to_kmh(var)
				var * 3.6
			end
end

class Lkw < Car

end

class Driver
	attr_accessor :name

	def initialize(name)
		@name = name
		@cars = []
	end

	def add_cars(car)
		@cars << car	
	end
	
	def show_cars
		@cars.each { |e| 
			puts e.typ
		 }

	end
	
end



#car1 =  Car.new

#car1.typ = "BMW"
#car1.ps = 150
#puts car1.beschleunigen(6);

vals = {'BMW' => 200, 'Trabbi' => 150, 'Honda' => 20}

cars2 = []
vals.each { |key, value|

cars2 << Car.new(value, key)

 }

  #puts cars2.inspect

  driver1 = Driver.new("Theo")

  cars2.each { |e| 
	driver1.add_cars(e)
   }
  
  puts "Fahrer #{driver1.name}"
  puts "Autos: " 
  driver1.show_cars