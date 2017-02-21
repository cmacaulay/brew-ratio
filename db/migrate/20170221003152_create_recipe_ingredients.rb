class CreateRecipeIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :recipe_ingredients do |t|
      t.references :ingredient, foreign_key: true
      t.references :recipes, foreign_key: true
      t.integer :amount
      t.string :amount_measurement_type

      t.timestamps null: false
    end
  end
end
