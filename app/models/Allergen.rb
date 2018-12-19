class Allergen
  @@all = []

  attr_accessor :user, :ingredient

  def initialize(ingredient)
    @ingredient = ingredient
    @@all << self
  end

  def self.all
    @@all
  end
end
