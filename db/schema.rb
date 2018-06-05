# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_06_05_183332) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "destination_cost_indices", force: :cascade do |t|
    t.decimal "avg_mcmeal", default: "0.0"
    t.decimal "avg_airfare", default: "0.0"
    t.decimal "avg_hotel", default: "0.0"
    t.text "currency"
    t.bigint "destination_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["destination_id"], name: "index_destination_cost_indices_on_destination_id"
  end

  create_table "destination_ratings", force: :cascade do |t|
    t.integer "rating"
    t.bigint "user_id"
    t.bigint "destination_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["destination_id"], name: "index_destination_ratings_on_destination_id"
    t.index ["user_id"], name: "index_destination_ratings_on_user_id"
  end

  create_table "destinations", force: :cascade do |t|
    t.string "name"
    t.string "airport_code"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "destination_cost_indices", "destinations"
  add_foreign_key "destination_ratings", "destinations"
  add_foreign_key "destination_ratings", "users"
end
