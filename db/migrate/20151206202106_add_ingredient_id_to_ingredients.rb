class AddIngredientIdToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :ingredient_id, :integer
  end
end
