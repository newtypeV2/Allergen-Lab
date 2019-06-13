class Recipe < ApplicationRecord
    belongs_to :user
    has_many :recipe_ingredients
    has_many :ingredients, through: :recipe_ingredients

    # accepts_nested_attributes_for :user
    validates :name, presence: true, :uniqueness => {:case_sensitive => false}

    validates :ingredient_ids, presence: true
end
