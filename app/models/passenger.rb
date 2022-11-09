class Passenger < ActiveRecord::Base
  has_many :bookings
  has_many :matatus, through: :bookings
  has_many :trips, through: :bookings

end
