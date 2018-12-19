class User
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_recipe_card(recipe, date, rating)
    recipe_card = RecipeCard.new(recipe)
    recipe_card.date = date
    recipe_card.rating = rating
    recipe_card.user = self
  end

  def declare_allergen(ingredient)
    allergen = Allergen.new(ingredient)
    allergen.user = self
  end

  def allergens
    ingredients = []
    Allergen.all.each do |allergen|
      if allergen.user == self
        ingredients << allergen.ingredient
      end
    end
    ingredients
  end

end
