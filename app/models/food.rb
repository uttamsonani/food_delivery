class Food < ApplicationRecord
    has_many :food_categories
    has_many :categories, through: :food_categories

    has_many :order_foods
    has_many :oreders, through: :order_foods
end
