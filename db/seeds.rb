# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

puts "deleting doses"
Dose.delete_all
puts "deleting ingredients"
Ingredient.delete_all
puts "deleting cocktails"
Cocktail.delete_all


puts "creating ingredients"
url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

ingredients_hash = JSON.parse(open(url).read)["drinks"]

ingredients_hash.each do |ingredient|
  Ingredient.create!(name: ingredient["strIngredient1"])
end

puts "creating cocktails"
10.times do
cocktail = Cocktail.create!(name: Faker::DragonBall.character)
end

puts "finished"
