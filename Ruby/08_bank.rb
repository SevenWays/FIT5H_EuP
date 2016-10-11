class Kunde
  attr_accessor :name, :gehalt
  attr_writer :adresse

  def initialize(name)
    @name = name
  end

  def adresse
  names =  @name.split(' ')
  adresses = @adresse.split(' ')
    adresses.each { |addr|
      addr.capitalize!
     }
    adresse = adresses.join(" ")

    "#{names[0].capitalize} #{names[1].capitalize}, #{adresse}"
  end
end

class Kredit
  attr_accessor :kredit
  @kunde
  def initialize(kunde)
    @kunde = kunde
  end

  def kunde
    "#{@kunde.adresse}. Jahresgehalt #{@kunde.gehalt}Euro"
  end
  def kredit_sum
    "Erteielte Kreditsumme: #{@kredit} Euro"
  end

end

kunde1 = Kunde.new("theo sommer")
kunde1.name = "theo sonnenschein"
puts kunde1.name
puts "Bitte Jahresgehalt eingeben:"
kunde1.gehalt = gets
kunde1.adresse = "hermelinweg 11, 22159 hamburg"


kredit1 = Kredit.new(kunde1)
kredit1.kredit = 5000
puts kredit1.kunde
puts kredit1.kredit_sum
