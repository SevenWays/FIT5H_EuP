name1 = "larry"
health = 60
puts "#{name1}'s health is #{health}"


puts "#{name1}'s health is #{health * 3}"
puts "#{name1}'s health is #{health /  9.to_f}"
puts "#{name1}'s health is #{health  / 9.to_i}"

name1 = "larry"
name2 = "curly"
name3 = "moe"

puts "Players: \n\t #{name1} \n\t #{name2} \n\t #{name3}"

allenamen = <<HEREDOC
Players:
	#{name1}
		#{name2}
	#{name3}
HEREDOC

puts allenamen