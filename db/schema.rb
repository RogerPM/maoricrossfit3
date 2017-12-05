# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20171205163004) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "identification_card"
    t.string   "gender"
    t.string   "phone"
    t.string   "email"
    t.date     "birthday"
    t.text     "address"
    t.string   "country"
    t.string   "province"
    t.string   "city"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer  "name"
    t.decimal  "purchase_price"
    t.decimal  "sale_price"
    t.integer  "quantity"
    t.integer  "maximum_quantity"
    t.decimal  "gain"
    t.integer  "provider_id"
    t.string   "type"
    t.boolean  "state"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "products", ["provider_id"], name: "index_products_on_provider_id", using: :btree

  create_table "providers", force: :cascade do |t|
    t.string   "name"
    t.string   "ruc"
    t.string   "phone"
    t.text     "address"
    t.string   "email"
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sales", force: :cascade do |t|
    t.date     "date"
    t.string   "hour"
    t.integer  "client_id"
    t.integer  "user_id"
    t.decimal  "subtotal"
    t.decimal  "iva"
    t.decimal  "total_effective"
    t.decimal  "total_card"
    t.decimal  "total_checks"
    t.text     "nota"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "sales", ["client_id"], name: "index_sales_on_client_id", using: :btree
  add_index "sales", ["user_id"], name: "index_sales_on_user_id", using: :btree

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "shcedules", force: :cascade do |t|
    t.date     "start_time"
    t.date     "end_time"
    t.string   "days"
    t.string   "start_hour"
    t.string   "end_hour"
    t.integer  "user_id"
    t.integer  "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "shcedules", ["service_id"], name: "index_shcedules_on_service_id", using: :btree
  add_index "shcedules", ["user_id"], name: "index_shcedules_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "identification_card"
    t.text     "address"
    t.date     "birthday"
    t.string   "phone"
    t.date     "contract_date"
    t.date     "contract_date_end"
    t.string   "position"
    t.string   "state"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_foreign_key "products", "providers"
  add_foreign_key "sales", "clients"
  add_foreign_key "sales", "users"
  add_foreign_key "shcedules", "services"
  add_foreign_key "shcedules", "users"
end
