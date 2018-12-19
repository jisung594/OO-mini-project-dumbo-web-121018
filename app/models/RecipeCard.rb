class RecipeCard
  @@all = []
  attr_accessor :recipe, :user, :date, :rating

  def initialize(recipe)
    @recipe = recipe
    @@all << self
  end

  def self.all
    @@all
  end
end
