class Matatu < ActiveRecord::Base
  has_many :bookings
  has_many :passengers, through: :bookings
  belongs_to :route
end
