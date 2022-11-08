class CreatePassengers < ActiveRecord::Migration[6.1]
  def change
    create_table :passengers do |t|
      t.string :name
      t.integer :phone
      t.string :password
      t.integer :matatu_id
      t.integer :route_id
    end
  end
end
