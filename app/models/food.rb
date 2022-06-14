class Food < ApplicationRecord
    has_many :food_categories
    has_many :categories, through: :food_categories

    has_many :order_foods
    has_many :oreders, through: :order_foods

    # VALIDATION
    validates :name, presence: true
    validates :description, presence: true
    validates :price, presence: true, numericality: { only_integer: true }  
    validates :active, presence: true
end
