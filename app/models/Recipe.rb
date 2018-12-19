class Recipe
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def cards
    RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
    end
  end

  def users
    cards.map do |card|
      card.user
    end
  end

  def ingredients
    RecipeIngredient.all.select do |ingredient|
      ingredient.recipe == self
    end.map do |x|
      x.ingredient
    end
  end

  def add_ingredients(ingredients)
      ingredients.each do |ingredient|
        recipe_ingredient = RecipeIngredient.new(ingredient,self)
      end
  end

  def allergens
    allergens = []
    Allergen.all.each do |allergen|
      self.ingredients.each do |ingredient|
        if ingredient == allergen.ingredient
          allergens << ingredient
        end
      end
    end
    allergens
  end

  def self.most_popular
    new_hash = {}
    RecipeCard.all.each do |card|
      if new_hash[card.recipe]
        new_hash[card.recipe] += 1
      else
        new_hash[card.recipe] = 1
      end
    end
    new_hash.sort_by {|k,v| v}.last
  end

  def self.all
    @@all
  end

end
