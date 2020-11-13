# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Cocktail.destroy_all
puts "Creating ingredients"
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "crushed ice")
Ingredient.create(name: "rum")
Ingredient.create(name: "spicy ginger")
Ingredient.create(name: "cane sugar")
Ingredient.create(name: "gin")
Ingredient.create(name: "limes")
Ingredient.create(name: "lemon juice")
Ingredient.create(name: "sugar syrup")
Ingredient.create(name: "soda")
Ingredient.create(name: "tonic")
Ingredient.create(name: "cachaca")

puts "creating cocktails"
file = URI.open('https://picsum.photos/200/300')

cocktail = Cocktail.create(name: "Mojito")
cocktail.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
puts "created first cocktail"

file = URI.open('https://picsum.photos/200/300')
cocktail = Cocktail.create(name: "Dark and Stormy")
cocktail.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://picsum.photos/200/300')
cocktail = Cocktail.create(name: "Caipirinha")
cocktail.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

puts "done"

