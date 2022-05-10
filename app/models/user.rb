class User < ApplicationRecord 
    has_and_belongs_to_many :dining_tables
    has_many :reservations
    
    has_and_belongs_to_many :orders

# VALIDATION
    validates_presence_of :first_name
    validates_presence_of :first_name
    validates_presence_of :email, uniqueness: true, format: { with: /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i }
    validates_presence_of :phone_no,  numericality: { only_integer: true }
    validates_presence_of :gender
    validates_presence_of :address
    validates_presence_of :landmark
    validates_presence_of :city
    validates_presence_of :state 
    validates_presence_of :zip_code
end
