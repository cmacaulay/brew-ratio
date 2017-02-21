class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.references :style, foreign_key: true

      t.timestamps null: false
    end
  end
end
