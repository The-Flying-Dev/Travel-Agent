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

ActiveRecord::Schema.define(version: 2022_07_15_164238) do

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "city"
    t.string "postcode"
    t.integer "customer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_addresses_on_customer_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "customer_id", null: false
    t.integer "journey_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_bookings_on_customer_id"
    t.index ["journey_id"], name: "index_bookings_on_journey_id"
  end

  create_table "bookings_cabins", id: false, force: :cascade do |t|
    t.integer "cabin_id", null: false
    t.integer "booking_id", null: false
  end

  create_table "cabins", force: :cascade do |t|
    t.string "name"
    t.integer "beds"
    t.integer "section"
    t.integer "train_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["train_id"], name: "index_cabins_on_train_id"
  end

  create_table "credit_cards", force: :cascade do |t|
    t.string "number"
    t.string "exp_date"
    t.string "name_on_card"
    t.string "company"
    t.integer "customer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_credit_cards_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.boolean "has_good_credit"
    t.boolean "paid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "journeys", force: :cascade do |t|
    t.string "name"
    t.integer "train_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["train_id"], name: "index_journeys_on_train_id"
  end

  create_table "payments", force: :cascade do |t|
    t.decimal "amount"
    t.integer "credit_card_id", null: false
    t.integer "customer_id", null: false
    t.integer "booking_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["booking_id"], name: "index_payments_on_booking_id"
    t.index ["credit_card_id"], name: "index_payments_on_credit_card_id"
    t.index ["customer_id"], name: "index_payments_on_customer_id"
  end

  create_table "stations", force: :cascade do |t|
    t.string "name"
    t.string "town"
    t.string "lat"
    t.string "long"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trains", force: :cascade do |t|
    t.string "name"
    t.integer "capacity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "addresses", "customers"
  add_foreign_key "bookings", "customers"
  add_foreign_key "bookings", "journeys"
  add_foreign_key "cabins", "trains"
  add_foreign_key "credit_cards", "customers"
  add_foreign_key "journeys", "trains"
  add_foreign_key "payments", "bookings"
  add_foreign_key "payments", "credit_cards"
  add_foreign_key "payments", "customers"
end
