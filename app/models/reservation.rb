class Reservation < ApplicationRecord
    belongs_to :user
    belongs_to :dining_table

    # VALIDATION
    validates :persons, presence: true
    validates :time, presence: true
    validates :name, presence: true
    validates :email, presence: true
    validates :phone_no, presence: true, numericality: { only_integer: true }
    validates :date, presence: true
end
