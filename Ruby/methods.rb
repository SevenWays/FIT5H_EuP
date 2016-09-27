def say_hallo(health)
	"Ich bin Ludwig mit einem Wert von #{health} um #{time}"
end

def time
	Time.now.strftime("%H:%M");
end

puts say_hallo(444)