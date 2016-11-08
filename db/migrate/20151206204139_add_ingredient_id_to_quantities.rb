class AddIngredientIdToQuantities < ActiveRecord::Migration
  def change
    add_column :quantities, :ingredient_id, :integer
  end
end
