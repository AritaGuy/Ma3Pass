class Booking < ActiveRecord::Base
  belongs_to :matatu
  belongs_to :passenger
end
