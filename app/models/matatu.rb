class Matatu < ActiveRecord::Base
  has_many :bookings
  has_many :trips, through: :bookings
  has_many :passengers, through: :bookings
end
