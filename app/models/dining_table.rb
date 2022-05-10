class DiningTable < ApplicationRecord
    has_and_belongs_to_many :users
    has many :reservations

    # VALIDATION 
    validates :table_no, presence: true numericality: { only_integer: true }
    validates :number_of_seats, presence: true numericality: { only_integer: true }
end
