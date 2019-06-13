class User < ApplicationRecord
    has_many :allergens
    has_many :recipes
    has_many :ingredients, through: :allergens
end
