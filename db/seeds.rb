# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Film.find_or_create_by(title: "Star Wars: Episodio I - La amenaza fantasma", gender: "Ciencia Ficcion", price: 5000, duration: "2h 16 m")
Film.find_or_create_by(title: "Star Wars: Episodio II - El ataque de los clones", gender: "Ciencia Ficcion", price: 6000, duration: "2h 22m")
Film.find_or_create_by(title: "Star Wars: Episodio III - La venganza de los Sith", gender: "Ciencia Ficcion", price: 4500, duration: "2h 20m")

Serie.find_or_create_by(title: "Stranger Things", gender: "Ciencia Ficcion", price: 8000, season: 3)
Serie.find_or_create_by(title: "Sex Education", gender: "Comedia Dramatica", price: 8500, season: 2)
Serie.find_or_create_by(title: "The Witcher", gender: "Drama y Fantasia Oscura", price: 4500, season: 1)