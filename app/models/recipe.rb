class Recipe < ApplicationRecord
  belongs_to :user
  has_many :ingredient_measures, dependent: :destroy
end
