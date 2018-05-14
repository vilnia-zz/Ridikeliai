class IngredientMeasurementRecipe < ApplicationRecord
  belongs_to :ingredient
  belongs_to :reicipe
  belongs_to :measurement
end
