class Ingredient < ApplicationRecord
	has_many :ingredient_measurement_recipes, dependent: :destroy
	has_many :measurements, through: :ingredient_measurement_recipes
	has_many :recipes, through: :ingredient_measurement_recipes
end
