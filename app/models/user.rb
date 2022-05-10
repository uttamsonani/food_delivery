class User < ApplicationRecord
    has_and_belongs_to_many :dining_tables
    has_many :reservations

    has_and_belongs_to_many :orders
end
