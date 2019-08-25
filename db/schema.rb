# This file is auto-generated from the current state of the database. Instead of editing this file, please use the migrations feature of Active Record to incrementally modify your database, and then regenerate this schema definition.

# Note that this schema.rb definition is the authoritative source for your database schema. If you need to create the application database on another system, you should be using db:schema:load, not running all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations you'll amass, the slower it'll run and the greater likelihood for issues).

# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_08_11_192746) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "borrowers", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lenders", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_lenders_on_email", unique: true
    t.index ["reset_password_token"], name: "index_lenders_on_reset_password_token", unique: true
  end

  create_table "loans", id: :serial, force: :cascade do |t|
    t.integer "lender_id"
    t.integer "borrower_id"
    t.integer "item_id"
    t.integer "days_borrowed", default: 1
    t.integer "reminders_sent", default: 0
    t.boolean "returned", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["borrower_id"], name: "index_loans_on_borrower_id"
    t.index ["item_id"], name: "index_loans_on_item_id"
    t.index ["lender_id"], name: "index_loans_on_lender_id"
  end

end
