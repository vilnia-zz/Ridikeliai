class IngredientRecipe < ApplicationRecord
  belongs_to :ingredient
  belongs_to :reicipe
  belongs_to :measurements
end
