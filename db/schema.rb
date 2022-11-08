# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_11_08_103500) do

  create_table "bookings", force: :cascade do |t|
    t.integer "ticket_no"
    t.integer "matatu_id"
    t.integer "passenger_id"
    t.integer "route_id"
  end

  create_table "matatus", force: :cascade do |t|
    t.string "sacco"
    t.string "reg_no"
  end

  create_table "passengers", force: :cascade do |t|
    t.string "name"
    t.integer "phone"
    t.string "password"
  end

  create_table "routes", force: :cascade do |t|
    t.string "name"
    t.integer "price"
  end

end
