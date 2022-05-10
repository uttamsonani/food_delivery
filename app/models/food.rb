class Food < ApplicationRecord
    has_many :food_categories
    has_many :categories, through: :food_categories

    has_many :order_foods
    has_many :oreders, through: :order_foods

    # VALIDATION
    validates_presence_of :name
    validates_presence_of :description
    validates_presence_of :photo
    validates_presence_of :price, numericality: { only_integer: true }  
    validates_presence_of :active
end
