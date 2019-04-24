
class ProjectsController < ApplicationRecord
  def new
    @recipe = Recipe.new
  end
end
