class Customer

	attr_accessor :firstname, :street, :city

	def initialize(bank_account, lastname="")
	@bank_account=bank_account
	@lastname = lastname
		
	end
	
	def print_address
		puts "Konto:".ljust(30,".") + "#{@bank_account}"
		puts "Name:".ljust(30,".") + "#{@firstname} #{@lastname}"
		puts "Street:".ljust(30,".") + "#{@street}"
		puts "City:".ljust(30,".") + "#{@city}"

	end
	
end

c1 = Customer.new(9999, "Hoffmann")
c1.firstname = "Sergej"
c1.street = "Frederic-Chopin-weg 10"
c1.city = "Winsen"
c1.print_address