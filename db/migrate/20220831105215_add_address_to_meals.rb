class AddAddressToMeals < ActiveRecord::Migration[7.0]
  def change
    add_column :meals, :address, :string
  end
end
