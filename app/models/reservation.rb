class Reservation < ApplicationRecord
    belongs_to :user
    belongs_to :dining_table

    after_create :create_reservation
    # after_validation :send_update_noti, on: :update
    # after_destroy :send_destroy_noti
    after_validation :set_table_no

    # VALIDATION
    validates :persons, presence: true
    validates :time, presence: true
    validates :name, presence: true
    validates :email, presence: true
    validates :phone_no, presence: true, numericality: { only_integer: true }
    validates :date, presence: true


    def set_table_no
        
    end

    def create_reservation
        ReservationMailer.with(user: self).create_reservation.deliver_later
    end

    def send_update_noti
        UserMailer.with(user: self).update_noti.deliver_now 
    end

    def send_destroy_noti
        UserMailer.with(user: self).delete_noti.deliver_now
    end
end
