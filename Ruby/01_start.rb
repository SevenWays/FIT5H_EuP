puts "Ermitteln Stunden pro Jahr"
tage = 365
stunde = 24
puts tage * stunde


puts "Ausgabe eine String Großgeschrieben"
str = "Hello Ruby!"
puts str.upcase

puts "Die Willkommensnachricht drei mal hintereinander ausgeben"
hello = "Welcome to Ruby"
3.times do 
	puts hello.upcase
end

puts hello + "\n" + str

puts "#{hello} \n #{str} \n today is #{Time.now}"