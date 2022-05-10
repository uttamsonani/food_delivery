class Reservation < ApplicationRecord
    belongs_to :user
    belongs_to :dining_table

    # VALIDATION
    validates :persons, presence: true, numericality: { only_integer: true }
    validates :time, presence: true
end
