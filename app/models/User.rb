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
    recipe_card = RecipeCard.new(recipe,self)
    recipe_card.date = date
    recipe_card.rating = rating
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

  def all_recipes
    RecipeCard.all.select do |card|
      card.user == self
    end
  end

  def recipes
    all_recipes.map do |card|
      card.recipe
    end
  end

  def top_three_recipes
    all_recipes.sort_by do |x,y|
      x.rating
    end.slice(-3,3)
  end

  def most_recent_recipe
    all_recipes.sort_by do |x|
      x.date
    end[-1]
  end

end
