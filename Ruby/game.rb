require_relative "player.rb"
class Game
	def initialize(title)
		@title = title
		@players = []
	end

	def add_player(player)
		@players << player
	end

	def play
		puts "dddd"
			@players.each do |player|
				puts player
			end

	@players.each do |player|
		puts	player.blame
		puts	player.w00t
		puts	player.w00t
		puts 	player.say_hallo
	end


	end
end

player1 = Player.new("Superman",500)
player2 = Player.new("Batman")
player3 = Player.new("Spiderman",999)
game = Game.new("My new Game")
game.add_player(player1)
game.add_player(player2)
game.add_player(player3)

game.play
