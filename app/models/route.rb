class Route < ActiveRecord::Base
  has_many :bookings
  has_many :matatus, through: :bookings
end
