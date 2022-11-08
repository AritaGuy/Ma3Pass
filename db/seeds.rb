puts "Destroying old data..."
Matatu.destroy_all
Passenger.destroy_all
Route.destroy_all
Booking.destroy_all


puts "🌱 Seeding data..."

puts "Creating matatus..."
matatu1 = Matatu.create(sacco: Faker::Company.name, reg_no: Faker::Vehicle.license_plate)
matatu2 = Matatu.create(sacco: Faker::Company.name, reg_no: Faker::Vehicle.license_plate)
matatu3 = Matatu.create(sacco: Faker::Company.name, reg_no: Faker::Vehicle.license_plate)
matatu4 = Matatu.create(sacco: Faker::Company.name, reg_no: Faker::Vehicle.license_plate)
matatu5 = Matatu.create(sacco: Faker::Company.name, reg_no: Faker::Vehicle.license_plate)

puts "Creating routes..."
route1 = Route.create(name: "Nairobi - Nakuru", price: 300)
route2 = Route.create(name: "Nairobi - Eldoret", price: 800)
route3 = Route.create(name: "Nairobi - Mombasa", price: 1200)
route4 = Route.create(name: "Nairobi - Nanyuki", price: 600)

puts "Creating passengers..."
pass1 = Passenger.create(name: Faker::Name.name, phone: Faker::Number.leading_zero_number(digits: 10), password: Faker::Alphanumeric.alpha(number: 5))
pass2 = Passenger.create(name: Faker::Name.name, phone: Faker::Number.leading_zero_number(digits: 10), password: Faker::Alphanumeric.alpha(number: 5))
pass3 = Passenger.create(name: Faker::Name.name, phone: Faker::Number.leading_zero_number(digits: 10), password: Faker::Alphanumeric.alpha(number: 5))
pass4 = Passenger.create(name: Faker::Name.name, phone: Faker::Number.leading_zero_number(digits: 10), password: Faker::Alphanumeric.alpha(number: 5))
pass5 = Passenger.create(name: Faker::Name.name, phone: Faker::Number.leading_zero_number(digits: 10), password: Faker::Alphanumeric.alpha(number: 5))


puts "Creating bookings..."
booking1 = Booking.create(ticket_no: Faker::Number.number(digits: 3))
booking2 = Booking.create(ticket_no: Faker::Number.number(digits: 3))
booking3 = Booking.create(ticket_no: Faker::Number.number(digits: 3))
booking4 = Booking.create(ticket_no: Faker::Number.number(digits: 3))
booking5 = Booking.create(ticket_no: Faker::Number.number(digits: 3))
booking6 = Booking.create(ticket_no: Faker::Number.number(digits: 3))
booking7 = Booking.create(ticket_no: Faker::Number.number(digits: 3))
booking8 = Booking.create(ticket_no: Faker::Number.number(digits: 3))
booking9 = Booking.create(ticket_no: Faker::Number.number(digits: 3))
booking10 = Booking.create(ticket_no: Faker::Number.number(digits: 3))
booking11 = Booking.create(ticket_no: Faker::Number.number(digits: 3))


# Simulates a passenger requesting booking a ticket on the frontend
# MATATU bookings
matatu1.bookings << booking1
matatu1.bookings << booking3
matatu1.bookings << booking2

matatu2.bookings << booking4
matatu2.bookings << booking5

matatu3.bookings << booking8
matatu3.bookings << booking6

matatu4.bookings << booking7
matatu4.bookings << booking9
matatu4.bookings << booking10

matatu5.bookings << booking11

# Simulates a passenger requesting a ticket on the frontend
# ROUTE passengers
route1.bookings << booking8
route1.bookings << booking7

route2.bookings << booking6
route2.bookings << booking5

route3.bookings << booking4
route3.bookings << booking3
route3.bookings << booking11

route4.bookings << booking2
route4.bookings << booking9
route4.bookings << booking10
route4.bookings << booking1


# PASSENGER tickets
pass1.bookings << booking1
pass1.bookings << booking2

pass2.bookings << booking3
pass2.bookings << booking4

pass3.bookings << booking8

pass4.bookings << booking5
pass4.bookings << booking6

pass5.bookings << booking7
pass5.bookings << booking9
pass5.bookings << booking10
pass5.bookings << booking11

puts "🌱 Done seeding!"
