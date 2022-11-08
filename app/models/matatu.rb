class Matatu < ActiveRecord::Base
  has_many :bookings
  has_many :routes, through: :bookings
end
