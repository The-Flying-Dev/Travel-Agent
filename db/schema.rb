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

ActiveRecord::Schema.define(version: 2022_07_13_183817) do

  create_table "cabins", force: :cascade do |t|
    t.string "name"
    t.integer "beds"
    t.integer "section"
    t.integer "train_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["train_id"], name: "index_cabins_on_train_id"
  end

  create_table "journeys", force: :cascade do |t|
    t.string "name"
    t.integer "train_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["train_id"], name: "index_journeys_on_train_id"
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

  add_foreign_key "cabins", "trains"
  add_foreign_key "journeys", "trains"
end
