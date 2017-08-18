require 'open-uri'
require 'json'

Ingredient.destroy_all
Cocktail.destroy_all

response = open('http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read
result = JSON.parse(response)
result["drinks"].first(10).each do |hash|
  Ingredient.create(name: hash["strIngredient1"])
end


5.times do
  Cocktail.create(name: Faker::Coffee.blend_name)
end
