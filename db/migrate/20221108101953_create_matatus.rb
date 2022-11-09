class CreateMatatus < ActiveRecord::Migration[6.1]
  def change
    create_table :matatus do |t|
      t.string :sacco
      t.string :reg_no
      t.integer :capacity
    end
  end
end
