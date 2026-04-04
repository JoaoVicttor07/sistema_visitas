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

ActiveRecord::Schema[8.1].define(version: 2026_04_04_221810) do
  create_table "sectors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.integer "unit_id", null: false
    t.datetime "updated_at", null: false
    t.index ["unit_id"], name: "index_sectors_on_unit_id"
  end

  create_table "units", force: :cascade do |t|
    t.string "address"
    t.datetime "created_at", null: false
    t.string "email"
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "cpf"
    t.datetime "created_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name"
    t.datetime "remember_created_at"
    t.datetime "reset_password_sent_at"
    t.string "reset_password_token"
    t.string "role"
    t.integer "sector_id", null: false
    t.integer "unit_id", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["sector_id"], name: "index_users_on_sector_id"
    t.index ["unit_id"], name: "index_users_on_unit_id"
  end

  create_table "visitors", force: :cascade do |t|
    t.string "cpf"
    t.datetime "created_at", null: false
    t.string "name"
    t.string "photo"
    t.string "rg"
    t.string "telephone"
    t.datetime "updated_at", null: false
  end

  create_table "visits", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "date_time"
    t.integer "sector_id", null: false
    t.integer "status"
    t.integer "unit_id", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.integer "visitor_id", null: false
    t.index ["sector_id"], name: "index_visits_on_sector_id"
    t.index ["unit_id"], name: "index_visits_on_unit_id"
    t.index ["user_id"], name: "index_visits_on_user_id"
    t.index ["visitor_id"], name: "index_visits_on_visitor_id"
  end

  add_foreign_key "sectors", "units"
  add_foreign_key "users", "sectors"
  add_foreign_key "users", "units"
  add_foreign_key "visits", "sectors"
  add_foreign_key "visits", "units"
  add_foreign_key "visits", "users"
  add_foreign_key "visits", "visitors"
end
