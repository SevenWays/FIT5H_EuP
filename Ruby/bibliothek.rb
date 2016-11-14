class Bibliothek
	attr_reader :name
	attr_accessor :buecher

	def initialize(name)
		@name = name
		@buecher=[]
	end

	def add_book(book)
		@buecher << book	
	end

	def buch_aktion(jahr)
		str=""
		buecher = @buecher
		older = buecher.select { |e| (jahr - e.gekauft_am) > 5 }
		old = buecher.select { |e| (jahr - e.gekauft_am) > 2 && (jahr - e.gekauft_am) < 5}
		ok = buecher.select { |e| (jahr - e.gekauft_am) < 2 }


		if older.count > 0
			str =  str + "#{older.count} Buch das in Restaurierung geht:\n" 
			
			older.each { |book|  
				str =  str + "#{book}\n"
			}			
		end

		if old.count > 0	
				str =  str + "#{old.count} Bücher bei denen eine Kontrolle nötig ist:\n" 

				old.each { |book|  
				str =  str + "#{book}\n"
			}		
		end
		if ok.count > 0	
				str =  str + "#{ok.count} Bücher bei denen keine Aktion nötig ist:\n"
				ok.each { |book|  
				str =  str + "#{book}\n"
			}	
			end
str
	end


	def to_s
		str=""
		@buecher.each { |book|  
			str = str + "#{book}\n"

		}
		str
	end
end


class Buch
	attr_accessor :gekauft_am
	attr_reader :title

	def initialize(title)
		@title = title
		@author = []
	end

	def author_s
		str = ""
		@author.each { |author| 
			str = str + author.name + " "
		 }
		 str.strip
	end

	def author=(author)
		@author << author
	end

	def to_s
		"#{author_s}, #{@title} #{@gekauft_am}"
		
	end
end


class Author
	attr_reader :name, :geburtstag

	def initialize(name, geburtstag)
		@name = name
		@geburtstag = geburtstag
	end
end


bibliothek = Bibliothek.new("Hamburg")

author_1 = Author.new("Maier", "20.3.1980")

buch_1 = Buch.new("Niemand")
buch_1.author = author_1
buch_1.gekauft_am = 2005
buch_2 = Buch.new("Jeder")
buch_2.author = author_1
buch_2.gekauft_am = 2010
buch_3 = Buch.new("Immer wieder gerne")
buch_3.author = author_1
buch_3.gekauft_am = 2013
buch_4 = Buch.new("Morgen ist auch noch ein Tag")
buch_4.author = author_1
buch_4.gekauft_am = 2011

bibliothek.add_book(buch_1)
bibliothek.add_book(buch_2)
bibliothek.add_book(buch_3)
bibliothek.add_book(buch_4)

puts bibliothek
puts bibliothek.buch_aktion(2014)


###################################################################################################################
puts "/////////////////////////Aufgabe 8/////////////////////////"
class Buchverleih
	
	def initialize(bibliothek)
		@bib = bibliothek
		@ausleiher = []
	end

	def ausleihen(ausleiher, buch_title)
		book = @bib.buecher.select { |book| book.title == buch_title }
		@bib.buecher.reject! { |book| book.title == buch_title }

		if book != nil && !book.empty?

			ausleiher.buch = book[0]
			ausleiher.ausgelhient_am = "8.11.2016"
			@ausleiher << ausleiher
			puts "#{ausleiher.name} hat das Buch \"#{book[0].title}\" ausgeliehn!"
		else
			puts "#{ausleiher.name} wollte das Buch \"#{buch_title}\" auslieihen, aber die ist schon vergeben!"
		end		
	end

	def zurueck_geben(ausleiher)
		 res = @ausleiher.select { |e| e == ausleiher}

		 if !res.empty?
		 	@ausleiher.reject! { |e| e == ausleiher}
		 	@bib.buecher << res[0].buch
		end 

	end

	def list_ausleiher()
		str = "Ausleiher Liste:\n"
		@ausleiher.each { |e| 

			str = str + "Name: #{e.name} Buch: #{e.buch.title} Am: #{e.ausgelhient_am}\n"

		 }
		 str
	end
end

class Ausleiher
	attr_accessor :geburtstag, :addresse, :ausgelhient_am, :buch
	attr_reader :name
	def initialize(name, addresse="")
		@name = name
	end



end

buch_ver = Buchverleih.new(bibliothek)

ausleiher1 = Ausleiher.new("Theo Sommer")
ausleiher2 = Ausleiher.new("Theo Sonenschein")

buch_ver.ausleihen(ausleiher1, "Niemand")

buch_ver.ausleihen(ausleiher2, "Jeder")


puts buch_ver.list_ausleiher

buch_ver.zurueck_geben(ausleiher1)

puts buch_ver.list_ausleiher
