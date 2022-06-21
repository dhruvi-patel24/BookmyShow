class Event < ApplicationRecord
    has_many :show_bookings
    # belongs_to :categories
    # belongs_to :locations
    has_many :users, through: :show_booking
end
