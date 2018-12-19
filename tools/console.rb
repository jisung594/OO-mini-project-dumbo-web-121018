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

binding.pry
