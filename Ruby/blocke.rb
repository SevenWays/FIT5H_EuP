numbers = (15..20).to_a

numbers.each_index{|a| puts "Index: #{a} #{numbers.each{|v| puts "- Wert #{v}"}"}"
