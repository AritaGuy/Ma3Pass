class Route < ActiveRecord::Base
  has_many :bookings
  has_many :matatus, through: :bookings
  has_many :passengers, through: :bookings
end
