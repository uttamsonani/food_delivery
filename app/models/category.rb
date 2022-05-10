class Category < ApplicationRecord
    has_many :food_categories
    has_many :foods, through: :food_categories

    # VALIDATION
    validates_presence_of :name
end
