class User < ApplicationRecord
    has_and_belongs_to_many :roles
    has_many :events, through: :show_bookings
    has_many :show_bookings, dependent: :destroy
end
