# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create(name: "ice")
mint = Ingredient.create(name: "mint leaves")
banana = Ingredient.create(name: "Banana")
maracuja = Ingredient.create(name: "Maracuya")

mojito = Cocktail.create(name: "mojito")
bloody_mary = Cocktail.create(name: "Bloody Mary")
Cocktail.create(name: "Ginger Ale")
Cocktail.create(name: "Cuba Libreeeee")
Cocktail.create(name: "Vodka pure ma gueule")

dose_mint = Dose.new(description: "5 feuilles de menthe")
dose_mint.ingredient = mint
dose_mint.cocktail = mojito
dose_mint.save

mojito.doses.create(description: "5 feuilles de menthe", ingredient_id: mint.id)
bloody_mary.doses.create(description: "Tomato", ingredient_id: mint.id)
mojito.doses.create(description: "5 feuilles de menthe", ingredient_id: ice.id)
mojito.doses.create(description: "5 feuilles de menthe", ingredient_id: mint.id)
mojito.doses.create(description: "5 feuilles de menthe", ingredient_id: mint.id)

