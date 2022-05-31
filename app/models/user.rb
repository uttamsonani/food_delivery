class User < ApplicationRecord 
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

    has_many :reservations
    
    has_many :orders

    # CALLBACK
    after_save :full_name

    # VALIDATION
    validates :first_name, :last_name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "Only latters are allowed" }
    # validates :email, presence: true, uniqueness: true, format: { with: /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i }
    validates :phone_no, presence: true, numericality: { only_integer: true }
    validates :gender, presence: true
    validates :address, presence: true
    validates :landmark, presence: true
    validates :city, presence: true
    validates :state, presence: true 
    validates :zip_code, presence: true, numericality: { only_integer: true }

    # CALLBACK
    def full_name
        "#{self.first_name.capitalize} #{self.last_name.capitalize}"
    end
end
