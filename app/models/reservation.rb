class Reservation < ApplicationRecord
    belongs_to :user

# VALIDATION
    validates_presence_of :persons, numericality: { only_integer: true }
    validates_presence_of :time 
end
