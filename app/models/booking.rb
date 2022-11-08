class Booking < ActiveRecord::Base
  belongs_to :passenger
  belongs_to :matatu
  belongs_to :route
end
