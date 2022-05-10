class DiningTable < ApplicationRecord
    has_and_belongs_to_many :users

    # VALIDATION 
    validates_presence_of :table_no, numericality: { only_integer: true }
    validates_presence_of :number_of_seats, numericality: { only_integer: true }
end
