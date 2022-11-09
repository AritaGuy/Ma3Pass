class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :ticket_no
      t.integer :matatu_id
      t.integer :passenger_id
      t.integer :trip_id
      t.timestamps
    end
  end
end
