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

ActiveRecord::Schema[7.1].define(version: 2024_12_25_043353) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "curries", force: :cascade do |t|
    t.string "name", null: false
    t.integer "price", null: false
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_curries_on_category_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "curry_id"
    t.bigint "spiceness_id"
    t.bigint "ricesize_id"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "customer_id"
    t.index ["curry_id"], name: "index_orders_on_curry_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["ricesize_id"], name: "index_orders_on_ricesize_id"
    t.index ["spiceness_id"], name: "index_orders_on_spiceness_id"
  end

  create_table "ricesizes", force: :cascade do |t|
    t.string "name"
    t.integer "price", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spicenesses", force: :cascade do |t|
    t.string "name", null: false
    t.integer "price", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "curries", "categories"
  add_foreign_key "orders", "curries"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "ricesizes"
  add_foreign_key "orders", "spicenesses"
end
