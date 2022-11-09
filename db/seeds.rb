puts "Destroying old data..."
Matatu.destroy_all
Passenger.destroy_all
Trip.destroy_all
Booking.destroy_all


puts "🌱 Seeding data..."

# create_table :matatus do |t|
#   t.string :sacco
#   t.string :reg_no
#   t.integer :capacity
# end

puts "Creating matatus..."
matatu1 = Matatu.create(sacco: "Easy Coach", reg_no: Faker::Vehicle.license_plate, capacity: 10)
matatu2 = Matatu.create(sacco: "Modern Coast", reg_no: Faker::Vehicle.license_plate, capacity: 10)
matatu3 = Matatu.create(sacco: "Tahmeed", reg_no: Faker::Vehicle.license_plate, capacity: 8)
matatu4 = Matatu.create(sacco: "Guardian", reg_no: Faker::Vehicle.license_plate, capacity: 8)
matatu5 = Matatu.create(sacco: "Greenline", reg_no: Faker::Vehicle.license_plate, capacity: 5)

# create_table :trips do |t|
#   t.string :departure
#   t.string :destination
#   t.time :time
#   t.integer :price
# end

puts "Creating trips..."
trip1 = Trip.create(departure: "Nairobi", destination: "Nakuru", time: "07:00:00", price: 300)
trip2 = Trip.create(departure: "Nairobi", destination: "Nakuru", time: "09:00:00", price: 300)
trip3 = Trip.create(departure: "Nairobi", destination: "Kisumu", time: "08:00:00", price: 1000)
trip4 = Trip.create(departure: "Nairobi", destination: "Kisumu", time: "10:00:00", price: 1000)
trip5 = Trip.create(departure: "Nairobi", destination: "Mombasa", time: "00:00:00", price: 1200)
trip6 = Trip.create(departure: "Nairobi", destination: "Mombasa", time: "06:00:00", price: 1200)

# create_table :passengers do |t|
#   t.string :name
#   t.integer :phone
#   t.string :password
# end
puts "Creating passengers..."
pass1 = Passenger.create(name: Faker::Name.name, phone: Faker::Number.leading_zero_number(digits: 10), password: Faker::Alphanumeric.alpha(number: 5))
pass2 = Passenger.create(name: Faker::Name.name, phone: Faker::Number.leading_zero_number(digits: 10), password: Faker::Alphanumeric.alpha(number: 5))
pass3 = Passenger.create(name: Faker::Name.name, phone: Faker::Number.leading_zero_number(digits: 10), password: Faker::Alphanumeric.alpha(number: 5))
pass4 = Passenger.create(name: Faker::Name.name, phone: Faker::Number.leading_zero_number(digits: 10), password: Faker::Alphanumeric.alpha(number: 5))
pass5 = Passenger.create(name: Faker::Name.name, phone: Faker::Number.leading_zero_number(digits: 10), password: Faker::Alphanumeric.alpha(number: 5))

# create_table :bookings do |t|
#   t.integer :ticket_no
#   t.integer :matatu_id
#   t.integer :passenger_id
#   t.integer :trip_id
#   t.timestamps
# end
# puts "Creating bookings..."
# booking1 = Booking.create(ticket_no: Faker::Number.number(digits: 3))
# booking2 = Booking.create(ticket_no: Faker::Number.number(digits: 3))
# booking3 = Booking.create(ticket_no: Faker::Number.number(digits: 3))
# booking4 = Booking.create(ticket_no: Faker::Number.number(digits: 3))
# booking5 = Booking.create(ticket_no: Faker::Number.number(digits: 3))
# booking6 = Booking.create(ticket_no: Faker::Number.number(digits: 3))
# booking7 = Booking.create(ticket_no: Faker::Number.number(digits: 3))
# booking8 = Booking.create(ticket_no: Faker::Number.number(digits: 3))
# booking9 = Booking.create(ticket_no: Faker::Number.number(digits: 3))
# booking10 = Booking.create(ticket_no: Faker::Number.number(digits: 3))
# booking11 = Booking.create(ticket_no: Faker::Number.number(digits: 3))


# Bookings simulate associations after a passenger requests a ticket on the frontend
# MATATU bookings
# matatu1.bookings << booking1
# matatu1.bookings << booking3
# matatu1.bookings << booking2

# matatu2.bookings << booking4
# matatu2.bookings << booking5

# matatu3.bookings << booking8
# matatu3.bookings << booking6

# matatu4.bookings << booking7
# matatu4.bookings << booking9
# matatu4.bookings << booking10

# matatu5.bookings << booking11

# Simulates a passenger requesting a ticket on the frontend
# TRIP bookings
# trip1.bookings << booking8
# trip1.bookings << booking7

# trip2.bookings << booking6
# trip2.bookings << booking5

# trip3.bookings << booking4
# trip3.bookings << booking3

# trip4.bookings << booking11
# trip4.bookings << booking2

# trip5.bookings << booking9
# trip5.bookings << booking10

# trip6.bookings << booking1


# PASSENGER bookings
# pass1.bookings << booking1
# pass1.bookings << booking2

# pass2.bookings << booking3
# pass2.bookings << booking4

# pass3.bookings << booking8

# pass4.bookings << booking5
# pass4.bookings << booking6

# pass5.bookings << booking7
# pass5.bookings << booking9
# pass5.bookings << booking10
# pass5.bookings << booking11

puts "🌱 Done seeding!"
