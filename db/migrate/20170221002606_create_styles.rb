class CreateStyles < ActiveRecord::Migration[5.0]
  def change
    create_table :styles do |t|
      t.references :category, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end
