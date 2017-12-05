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

ActiveRecord::Schema.define(version: 20171205164441) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "checks", force: :cascade do |t|
    t.integer  "num"
    t.string   "owner"
    t.string   "bank"
    t.decimal  "value"
    t.integer  "sale_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "checks", ["sale_id"], name: "index_checks_on_sale_id", using: :btree

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

  create_table "header_classes", force: :cascade do |t|
    t.date     "date"
    t.string   "start_time"
    t.string   "end_time"
    t.integer  "maximum_capacity"
    t.integer  "registered"
    t.integer  "service_id"
    t.integer  "shcedule_id"
    t.string   "teacher"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "header_classes", ["service_id"], name: "index_header_classes_on_service_id", using: :btree
  add_index "header_classes", ["shcedule_id"], name: "index_header_classes_on_shcedule_id", using: :btree

  create_table "memberships", force: :cascade do |t|
    t.string   "rate_name"
    t.integer  "sessions"
    t.integer  "service_id"
    t.decimal  "value"
    t.decimal  "discount"
    t.decimal  "total"
    t.boolean  "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "memberships", ["service_id"], name: "index_memberships_on_service_id", using: :btree

  create_table "product_quantities", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "quantity"
    t.decimal  "subtotal"
    t.integer  "sale_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "product_quantities", ["product_id"], name: "index_product_quantities_on_product_id", using: :btree
  add_index "product_quantities", ["sale_id"], name: "index_product_quantities_on_sale_id", using: :btree

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

  create_table "subscriptions", force: :cascade do |t|
    t.integer  "client_id"
    t.date     "start_time"
    t.date     "end_time"
    t.integer  "service_id"
    t.integer  "membership_id"
    t.integer  "total_entries"
    t.integer  "current_entries"
    t.string   "state"
    t.integer  "sale_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "subscriptions", ["client_id"], name: "index_subscriptions_on_client_id", using: :btree
  add_index "subscriptions", ["membership_id"], name: "index_subscriptions_on_membership_id", using: :btree
  add_index "subscriptions", ["sale_id"], name: "index_subscriptions_on_sale_id", using: :btree
  add_index "subscriptions", ["service_id"], name: "index_subscriptions_on_service_id", using: :btree

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

  add_foreign_key "checks", "sales"
  add_foreign_key "header_classes", "services"
  add_foreign_key "header_classes", "shcedules"
  add_foreign_key "memberships", "services"
  add_foreign_key "product_quantities", "products"
  add_foreign_key "product_quantities", "sales"
  add_foreign_key "products", "providers"
  add_foreign_key "sales", "clients"
  add_foreign_key "sales", "users"
  add_foreign_key "shcedules", "services"
  add_foreign_key "shcedules", "users"
  add_foreign_key "subscriptions", "clients"
  add_foreign_key "subscriptions", "memberships"
  add_foreign_key "subscriptions", "sales"
  add_foreign_key "subscriptions", "services"
end
