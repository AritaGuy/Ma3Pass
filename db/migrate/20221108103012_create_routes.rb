class CreateRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :routes do |t|
      t.string :departure
      t.string :destination
      t.time :time
      t.integer :price
    end
  end
end
