class Ingredient < ApplicationRecord
    has_many :recipe_ingredients
    has_many :allergens
    has_many :recipes, through: :recipe_ingredients
    has_many :users, through: :allergens
    validates :name, presence: true
end
