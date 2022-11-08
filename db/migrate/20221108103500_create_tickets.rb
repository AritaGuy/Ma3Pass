class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.integer :number
      t.integer :passenger_id
    end
  end
end
