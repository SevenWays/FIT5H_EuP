class Player

	attr_reader :name

	def initialize(pname, phealth=100)
		self.name = (pname)
		@health = phealth
	end

	def name=(name)
		@name = name.capitalize
	end

	def say_hallo()
		"Hallo, ich bin #{@name} mit einem Wert von #{@health} " + score.to_s
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
p = Player.new("sergej")
puts p.say_hallo