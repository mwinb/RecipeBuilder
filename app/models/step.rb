class Step < ApplicationRecord
    belongs_to :project

  def set_description( new_description )
    self.description = new_description
  end

  def done?
    return true if description.present?
  end

end
