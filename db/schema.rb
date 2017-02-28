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

ActiveRecord::Schema.define(version: 20170223212227) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "notes"
    t.string   "last_hosted"
    t.string   "attendance"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "party_id"
    t.integer  "customer_id"
    t.integer  "retail_amount"
    t.string   "order_type"
    t.string   "hostess"
    t.string   "payment_type"
    t.integer  "order_total"
    t.string   "date"
    t.integer  "order_ref"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id", using: :btree
    t.index ["party_id"], name: "index_orders_on_party_id", using: :btree
  end

  create_table "parties", force: :cascade do |t|
    t.string   "hostess"
    t.integer  "total"
    t.string   "description"
    t.string   "promo"
    t.integer  "expense"
    t.string   "expense_description"
    t.string   "date"
    t.integer  "attendee_count"
    t.string   "location"
    t.string   "notes"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "promos", force: :cascade do |t|
    t.integer  "party_id"
    t.string   "date"
    t.integer  "customer_id"
    t.integer  "demo_discount"
    t.integer  "five_dollar_coupon"
    t.boolean  "first_time"
    t.string   "gifts"
    t.integer  "total_paid"
    t.string   "payment_type"
    t.string   "promo_purchase"
    t.string   "hostess_gift"
    t.string   "notes"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["customer_id"], name: "index_promos_on_customer_id", using: :btree
    t.index ["party_id"], name: "index_promos_on_party_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "parties"
  add_foreign_key "promos", "customers"
  add_foreign_key "promos", "parties"
end
