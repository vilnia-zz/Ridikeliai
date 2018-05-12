class CreateIngredientRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredient_recipes do |t|
      t.references :ingredient, foreign_key: true
      t.references :measurement, foreign_key: true
      t.references :recipe, foreign_key: true
      t.decimal :quantity

      t.timestamps
    end
  end
end
