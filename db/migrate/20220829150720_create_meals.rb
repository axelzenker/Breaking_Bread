class CreateMeals < ActiveRecord::Migration[7.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.string :category
      t.string :cuisine
      t.text :details
      t.integer :portions
      t.string :diet
      t.string :allergens
      t.references :user, null: false, foreign_key: true
      t.float :price, default: 0
      t.date :expiry
      t.integer :reservation_min, default: 0

      t.timestamps
    end
  end
end
