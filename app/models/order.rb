class Order < ApplicationRecord
    belongs_to :users

    has_many :order_foods
    has_many :foods, through: :order_foods

    # VALIDATION
    validates :amount, presence: true, numericality: { only_integer: true }
end
