class Calculator
	def initialize(zahl1, zahl2)
		@zahl1 = zahl1
		@zahl2 = zahl2
	end

	def add
		@zahl1 + @zahl2
	end

	def subtract
		@zahl1 - @zahl2
	end
end

c1 = Calculator.new(7, 5)
puts c1.add
puts c1.subtract