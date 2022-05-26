class DiningTable < ApplicationRecord
    has many :reservations

    # VALIDATION 
    validates :table_no, presence: true numericality: { only_integer: true }
    validates :number_of_seats, presence: true numericality: { only_integer: true }
end
