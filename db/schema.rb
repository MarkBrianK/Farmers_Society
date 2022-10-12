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

ActiveRecord::Schema[7.0].define(version: 2022_10_12_091755) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "username"
    t.text "email"
    t.integer "password_digest"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.integer "farm_input_id"
    t.date "date_booked"
    t.string "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "farmer_inputs", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.date "expirydate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "farmer_output_deliveries", force: :cascade do |t|
    t.date "date"
    t.integer "cherry_kgs_delivered"
    t.integer "farmer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "farmers", force: :cascade do |t|
    t.string "name"
    t.integer "id_number"
    t.integer "membership_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.integer "password_digest"
    t.integer "farmer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
