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
		say_hallo
	end

	def health
		@health
	end

	def name
		@name
	end

	def name=(name)
		@name = name
	end

	def score
		@health *= 100
	end

end

mueller = Player.new('Müller')

mueller.name = "Manuell Neue"


player2 = Player.new('Superman',333)


	puts player2.w00t


player3 = Player.new("Batman",99)

players = [mueller, player2, player3]

players.each do |e|
puts e
end