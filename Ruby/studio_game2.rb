name1 = "Larry"
name2 = "Curly"
name3 = "Moe"
name4 = "Shemp"
health1 = 60
health2 = 125
health3 = 100
health4 = 90

puts "#{name1} has a health of #{health1}"
puts "#{name2} has a health of #{health2}"

2.times do
	puts "#{name3} has a health of #{health3}".center(40, '*')
end

2.times do
puts "#{name4.ljust(30,'.')} #{health4} health"
end

puts "Players: \n\t #{name1} \n\t #{name2} \n\t #{name3}"


t = Time.new(2007,11,19,8,37,48,"-06:00") #=> 2007-11-19 08:37:48 -0600


puts t.strftime("The game started on %m/%d/%Y at %I:%M%p")
