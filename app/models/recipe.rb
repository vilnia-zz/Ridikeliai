class Recipe < ApplicationRecord
	belongs_to :user

	has_many :ingredient_measurement_recipes, dependent: :destroy
	has_many :measurements, through: :ingredient_measurement_recipes
	has_many :ingredients, through: :ingredient_measurement_recipes

	has_many :category_recipes, dependent: :destroy
	has_many :categories, through: :category_recipes
end
