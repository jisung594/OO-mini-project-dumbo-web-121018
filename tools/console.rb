require_relative '../config/environment.rb'

user1 = User.new("bob")
user2 = User.new("john")
user3 = User.new("dave")

recipe1 = Recipe.new("spaghetti")
recipe2 = Recipe.new("oatmeal")
recipe3 = Recipe.new("avocado toast")

banana = Ingredient.new("banana")
peanut = Ingredient.new("peanut")
noodle = Ingredient.new("noodle")
oats = Ingredient.new("oats")
bread = Ingredient.new("bread")

allergen1 = Allergen.new(banana)
allergen2 = Allergen.new(peanut)
allergen3 = Allergen.new(bread)

user1.add_recipe_card(recipe2, "04/23", 3.8)
user2.add_recipe_card(recipe3, "01/30", 2.9)
user3.add_recipe_card(recipe1, "04/10", 4.0)

arr = [banana,peanut,noodle,oats,bread]
recipe1.add_ingredients(arr)

binding.pry
