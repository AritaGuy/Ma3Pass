puts "Destroying old data..."
Matatu.destroy_all
Passenger.destroy_all
Route.destroy_all
Booking.destroy_all


puts "🌱 Seeding data..."

# create_table :matatus do |t|
#   t.string :sacco
#   t.string :reg_no
#   t.integer :route_id
# end

puts "Creating matatus..."
matatu1 = Matatu.create(sacco: "Easy Coach", reg_no: Faker::Vehicle.license_plate)
matatu2 = Matatu.create(sacco: "Modern Coast", reg_no: Faker::Vehicle.license_plate)
matatu3 = Matatu.create(sacco: "Tahmeed", reg_no: Faker::Vehicle.license_plate)
matatu4 = Matatu.create(sacco: "Guardian", reg_no: Faker::Vehicle.license_plate)
matatu5 = Matatu.create(sacco: "Easy Coach", reg_no: Faker::Vehicle.license_plate)
matatu6 = Matatu.create(sacco: "Easy Coach", reg_no: Faker::Vehicle.license_plate)
matatu7 = Matatu.create(sacco: "Greenline", reg_no: Faker::Vehicle.license_plate)
matatu8 = Matatu.create(sacco: "Greenline", reg_no: Faker::Vehicle.license_plate)
matatu9 = Matatu.create(sacco: "Greenline", reg_no: Faker::Vehicle.license_plate)
matatu10 = Matatu.create(sacco: "Modern Coast", reg_no: Faker::Vehicle.license_plate)
matatu11 = Matatu.create(sacco: "Modern Coast", reg_no: Faker::Vehicle.license_plate)
matatu12 = Matatu.create(sacco: "Greenline", reg_no: Faker::Vehicle.license_plate)
matatu13 = Matatu.create(sacco: "Tahmeed", reg_no: Faker::Vehicle.license_plate)
matatu14 = Matatu.create(sacco: "Tahmeed", reg_no: Faker::Vehicle.license_plate)
matatu15 = Matatu.create(sacco: "Greenline", reg_no: Faker::Vehicle.license_plate)
matatu16 = Matatu.create(sacco: "Greenline", reg_no: Faker::Vehicle.license_plate)

# matatu17 = Matatu.create(sacco: "Greenline", reg_no: Faker::Vehicle.license_plate)
# matatu18 = Matatu.create(sacco: "Greenline", reg_no: Faker::Vehicle.license_plate)
# matatu19 = Matatu.create(sacco: "Greenline", reg_no: Faker::Vehicle.license_plate)
# matatu20 = Matatu.create(sacco: "Greenline", reg_no: Faker::Vehicle.license_plate)
# matatu21 = Matatu.create(sacco: "Greenline", reg_no: Faker::Vehicle.license_plate)
# matatu22 = Matatu.create(sacco: "Greenline", reg_no: Faker::Vehicle.license_plate)
# matatu23 = Matatu.create(sacco: "Greenline", reg_no: Faker::Vehicle.license_plate)
# matatu24 = Matatu.create(sacco: "Greenline", reg_no: Faker::Vehicle.license_plate)


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
#   t.integer :passenger_id
#   t.integer :matatu_id
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
# booking12 = Booking.create(ticket_no: Faker::Number.number(digits: 3))
# booking13 = Booking.create(ticket_no: Faker::Number.number(digits: 3))
# booking14 = Booking.create(ticket_no: Faker::Number.number(digits: 3))
# booking15 = Booking.create(ticket_no: Faker::Number.number(digits: 3))
# booking16 = Booking.create(ticket_no: Faker::Number.number(digits: 3))
# booking17 = Booking.create(ticket_no: Faker::Number.number(digits: 3))
# booking18 = Booking.create(ticket_no: Faker::Number.number(digits: 3))
# booking19 = Booking.create(ticket_no: Faker::Number.number(digits: 3))
# booking20 = Booking.create(ticket_no: Faker::Number.number(digits: 3))
# booking21 = Booking.create(ticket_no: Faker::Number.number(digits: 3))
# booking22 = Booking.create(ticket_no: Faker::Number.number(digits: 3))


# create_table :routes do |t|
#   t.string :departure
#   t.string :destination
#   t.time :time
#   t.integer :price
# end
puts "Creating routes..."
route1 = Route.create(departure: "Nairobi", destination: "Nakuru", time: "07:00:00", price: 300)
route2 = Route.create(departure: "Nairobi", destination: "Nakuru", time: "10:00:00", price: 300)

route3 = Route.create(departure: "Nairobi", destination: "Eldoret", time: "07:00:00", price: 800)
route4 = Route.create(departure: "Nairobi", destination: "Eldoret", time: "11:00:00", price: 800)

route5 = Route.create(departure: "Nairobi", destination: "Kisumu", time: "05:00:00", price: 1000)
route6 = Route.create(departure: "Nairobi", destination: "Kisumu", time: "12:00:00", price: 1000)

route7 = Route.create(departure: "Nairobi", destination: "Mombasa", time: "20:00:00", price: 1200)
route8 = Route.create(departure: "Nairobi", destination: "Mombasa", time: "00:00:00", price: 1200)


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

# matatu6.bookings << booking12
# matatu7.bookings << booking14

# matatu8.bookings << booking15
# matatu9.bookings << booking13

# matatu10.bookings << booking20
# matatu11.bookings << booking17
# matatu12.bookings << booking21

# matatu13.bookings << booking16
# matatu14.bookings << booking19

# matatu15.bookings << booking18
# matatu16.bookings << booking22


# PASSENGER bookings
# pass1.bookings << booking1
# pass1.bookings << booking2
# pass1.bookings << booking12
# pass1.bookings << booking13

# pass2.bookings << booking3
# pass2.bookings << booking4
# pass2.bookings << booking14
# pass2.bookings << booking15

# pass3.bookings << booking8
# pass3.bookings << booking16

# pass4.bookings << booking5
# pass4.bookings << booking6
# pass4.bookings << booking17
# pass4.bookings << booking18

# pass5.bookings << booking7
# pass5.bookings << booking9
# pass5.bookings << booking10
# pass5.bookings << booking11
# pass5.bookings << booking21
# pass5.bookings << booking22
# pass5.bookings << booking19
# pass5.bookings << booking20



# ROUTE matatus
route1.matatus << matatu1
route1.matatus << matatu3

route2.matatus << matatu2
route2.matatus << matatu4

route3.matatus << matatu8
route3.matatus << matatu5

route4.matatus << matatu7
route4.matatus << matatu6

route5.matatus << matatu11
route5.matatus << matatu9

route6.matatus << matatu10
route6.matatus << matatu12

route7.matatus << matatu14
route7.matatus << matatu13

route8.matatus << matatu16
route8.matatus << matatu15

puts "🌱 Done seeding!"
