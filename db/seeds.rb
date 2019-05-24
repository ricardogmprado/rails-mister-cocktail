# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'json'
# require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
option_serialized = open(url).read
option = JSON.parse(option_serialized)
option['drinks'].each do |drink|
  Ingredient.create(name: drink['strIngredient1'])
end
# choices.each do |name|
#   Ingredient.create(name: drinks[])
# end
# url = "http://www.eujacomi.com.br/wp-content/uploads/2015/11/caipirinha-brasil-drink-e1479867158670.jpg"
# cocktail = Cocktail.new(name: "Caipirinha")
# cocktail.remote_photo_url = url
# cocktail.save!
# p "cocktail"
