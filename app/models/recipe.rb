class Recipe

  DEFAULT_NAME = "Unamed Recipe"
  attr_accessor :name, :ingredients

  def initialize(args = {})
    @name = args.fetch(:name, DEFAULT_NAME)
    @ingredients = []
  end
  
  def name
    @name
  end

  def incomplete_ingredients
    ingredients.reject(&:done?)
  end

  def submitable?
    return true if @name != DEFAULT_NAME && incomplete_ingredients.empty? && !ingredients.empty?
  end

end
