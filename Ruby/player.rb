class Player

	def initialize(pname, phealth=100)
		@name = pname
		@health = phealth
	end

	def say_hallo()
		"Hallo, ich bin #{@name} mit einem Wert von #{@health}"
	end

	def blame
		@health = @health - 10
		"#{@name} got blamed #{@health}"
	end

	def w00t
		@health = @health + 10
		"#{@name} got blamed #{@health}"
	end

	def to_s
		return 12121.to_s
	end
end

mueller = Player.new('Müller')
puts mueller
	#puts mueller.say_hallo
	#puts mueller.blam

player2 = Player.new('Superman',333)

	puts player2.say_hallo
	puts player2.w00t
