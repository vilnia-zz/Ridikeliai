class Ingredient < ApplicationRecord
	has_many :measurement_alloweds, dependent: :destroy
end
