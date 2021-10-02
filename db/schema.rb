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

ActiveRecord::Schema.define(version: 2021_10_02_193546) do

  create_table "guests", force: :cascade do |t|
    t.string "name"
    t.string "email"
  end

  create_table "shows", force: :cascade do |t|
    t.integer "rating"
    t.string "name"
    t.string "network"
    t.string "day"
    t.string "season"
  end

  create_table "tickets", force: :cascade do |t|
    t.string "date"
    t.integer "guest_id"
    t.integer "show_id"
    t.index ["guest_id"], name: "index_tickets_on_guest_id"
    t.index ["show_id"], name: "index_tickets_on_show_id"
  end

end
