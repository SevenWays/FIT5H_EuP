# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movie.create(title: "Batman", raiting: 8, total_gross: 150000, description: "Cooler Film", released_on: "2010-10-15")
Movie.create(title: "Spiderman", raiting: 5, total_gross: 440000, description: "Super Film", released_on: "2010-10-15")
Movie.create(title: "Superman", raiting: 3, total_gross: 5550000, description: "Geiler Film", released_on: "2010-10-15")
