class Reservation < ApplicationRecord
    belongs_to :user
    belongs_to :dining_table

    after_create :create_reservation
    after_validation :update_reservation, on: :update
    after_destroy :delete_reservation
    # after_validation :set_table_no

    # VALIDATION
    validates :persons, presence: true
    validates :time, presence: true
    validates :name, presence: true
    validates :email, presence: true
    validates :phone_no, presence: true, numericality: { only_integer: true }
    validates :date, presence: true

    # CALLBACKS
    # def set_table_no
        
    # end

    def create_reservation
        ReservationMailer.with(reservation: self).create_reservation.deliver_now
    end

    def update_reservation
        ReservationMailer.with(reservation: self).update_reservation.deliver_now 
    end

    def delete_reservation
        ReservationMailer.with(reservation: self).delete_reservation.deliver_now
    end
end
