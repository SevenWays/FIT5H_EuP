class Movie
	def initialize(pname, prank=5)
		@name = pname
		@rank = prank
	end

	def list_movie
		"Movie heisst: #{@name} und einen Rank von: #{@rank}"
	end

	def thumbs_up(value)
		@rank = @rank + value
	end

end

var1 = Movie.new("Superman", 10)
puts var1.list_movie

var2 = Movie.new("Batman")
puts var2.list_movie
var2.thumbs_up(7)
puts var2.list_movie