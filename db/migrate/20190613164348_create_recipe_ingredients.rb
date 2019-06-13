class CreateRecipeIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_ingredients do |t|
      t.integer :amount
      t.string :measurement
      t.integer :recipe_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
