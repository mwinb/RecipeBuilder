class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.references :recipe, foreign_key: true
      t.string :description
      t.boolean :completed

      t.timestamps
    end
  end
end
