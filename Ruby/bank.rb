class Customer

	attr_accessor :firstname, :lastname, :street, :city

	def initialize(bank_account, lastname="")
	@bank_account=bank_account
	@lastname = lastname
		
	end
	
	def print_address
		"\n" +
		"//////////////////////////////////////////////////////\n" +
		"Konto:".ljust(30,".") + "#{@bank_account}\n" +
		"Name:".ljust(30,".") + fullname +
		"Street:".ljust(30,".") + "#{@street}\n" +
		"City:".ljust(30,".") + "#{@city}\n" +
		"//////////////////////////////////////////////////////\n"

	end

	def fullname
		"#{@firstname} #{@lastname}\n"
	end
	
end

c1 = Customer.new(9999, "Hoffmann")
c1.firstname = "Sergej"
c1.street = "Frederic-Chopin-weg 10"
c1.city = "Winsen"
puts c1.print_address

c2 = Customer.new(8888)
c2.lastname = "Lodgz"
c2.firstname = "Theo"
c2.street = "Hermelinweg 7"
c2.city = "Hamburg"
puts c2.print_address