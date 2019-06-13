class User < ApplicationRecord
    has_many :allergens
    has_many :recipes, dependent: :destroy
    has_many :ingredients, through: :allergens

    validates :name, presence: true
end
