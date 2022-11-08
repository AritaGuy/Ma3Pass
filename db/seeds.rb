puts "Destroying old data..."
Matatu.destroy_all
Passenger.destroy_all
Route.destroy_all
Ticket.destroy_all


puts "🌱 Seeding data..."

puts "Creating matatus..."
matatu1 = Matatu.create(sacco: Faker::Company.name, reg_no: Faker::Vehicle.license_plate)
matatu2 = Matatu.create(sacco: Faker::Company.name, reg_no: Faker::Vehicle.license_plate)
matatu3 = Matatu.create(sacco: Faker::Company.name, reg_no: Faker::Vehicle.license_plate)
matatu4 = Matatu.create(sacco: Faker::Company.name, reg_no: Faker::Vehicle.license_plate)

puts "Creating routes..."
route1 = Route.create(name: "Nairobi - Nakuru", price: 300)
route2 = Route.create(name: "Nairobi - Eldoret", price: 800)
route3 = Route.create(name: "Nairobi - Mombasa", price: 1200)
route4 = Route.create(name: "Nairobi - Nanyuki", price: 600)

puts "Creating passengers..."
passenger1 = Passenger.create(name: Faker::Name.name, phone: Faker::Number.leading_zero_number(digits: 10), password: "1234")
passenger2 = Passenger.create(name: Faker::Name.name, phone: Faker::Number.leading_zero_number(digits: 10), password: "12345")
passenger3 = Passenger.create(name: Faker::Name.name, phone: Faker::Number.leading_zero_number(digits: 10), password: "123456")
passenger4 = Passenger.create(name: Faker::Name.name, phone: Faker::Number.leading_zero_number(digits: 10), password: "1234567")
passenger5 = Passenger.create(name: Faker::Name.name, phone: Faker::Number.leading_zero_number(digits: 10), password: "123")
passenger6 = Passenger.create(name: Faker::Name.name, phone: Faker::Number.leading_zero_number(digits: 10), password: "112")
passenger7 = Passenger.create(name: Faker::Name.name, phone: Faker::Number.leading_zero_number(digits: 10), password: "1122")
passenger8 = Passenger.create(name: Faker::Name.name, phone: Faker::Number.leading_zero_number(digits: 10), password: "112233")

puts "Creating tickets..."
# 16.times do |index|
#   ticket"#{index+1} = Ticket.create(number: Faker::Number.decimal_part(digits: 3))
# end
ticket1 = Ticket.create(number: Faker::Number.decimal_part(digits: 3))
ticket2 = Ticket.create(number: Faker::Number.decimal_part(digits: 3))
ticket3 = Ticket.create(number: Faker::Number.decimal_part(digits: 3))
ticket4 = Ticket.create(number: Faker::Number.decimal_part(digits: 3))
ticket5 = Ticket.create(number: Faker::Number.decimal_part(digits: 3))
ticket6 = Ticket.create(number: Faker::Number.decimal_part(digits: 3))
ticket7 = Ticket.create(number: Faker::Number.decimal_part(digits: 3))
ticket8 = Ticket.create(number: Faker::Number.decimal_part(digits: 3))
ticket9 = Ticket.create(number: Faker::Number.decimal_part(digits: 3))
ticket10 = Ticket.create(number: Faker::Number.decimal_part(digits: 3))
ticket11 = Ticket.create(number: Faker::Number.decimal_part(digits: 3))


# Simulates a passenger requesting a ticket on the frontend
# MATATU passengers
matatu1.passengers << passenger1
matatu1.passengers << passenger3
matatu1.passengers << passenger2

matatu2.passengers << passenger4
matatu2.passengers << passenger5

matatu3.passengers << passenger8
matatu3.passengers << passenger6

matatu4.passengers << passenger7

# Simulates a passenger requesting a ticket on the frontend
# ROUTE passengers
route1.passengers << passenger8
route1.passengers << passenger7

route2.passengers << passenger6
route2.passengers << passenger5

route3.passengers << passenger4
route3.passengers << passenger3

route4.passengers << passenger2
route4.passengers << passenger1


# PASSENGER tickets
passenger1.tickets << ticket1
passenger1.tickets << ticket2

passenger2.tickets << ticket3
passenger2.tickets << ticket4

passenger3.tickets << ticket5
passenger3.tickets << ticket6

passenger4.tickets << ticket8

passenger5.tickets << ticket7
passenger6.tickets << ticket9
passenger7.tickets << ticket10
passenger8.tickets << ticket11

puts "🌱 Done seeding!"