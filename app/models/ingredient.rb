class Ingredient < ApplicationRecord
  belongs_to :project

  def set_ingredient( new_ingredient )
    self.ingredient = new_ingredient
  end

  def set_amount( new_amount )
    self.amount = new_amount
  end

  def done?
    return true if amount.present? && ingredient.present?
  end
end
