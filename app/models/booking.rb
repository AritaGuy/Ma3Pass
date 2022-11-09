class Booking < ActiveRecord::Base
  belongs_to :passenger
  belongs_to :matatu
  belongs_to :trip
end
