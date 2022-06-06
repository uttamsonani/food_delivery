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

ActiveRecord::Schema[7.0].define(version: 2022_05_31_032407) do
  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dining_tables", force: :cascade do |t|
    t.integer "table_no"
    t.integer "number_of_seats"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food_categories", force: :cascade do |t|
    t.integer "food_id", null: false
    t.integer "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_food_categories_on_category_id"
    t.index ["food_id"], name: "index_food_categories_on_food_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.binary "photo"
    t.integer "price"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_foods", force: :cascade do |t|
    t.integer "orders_id", null: false
    t.integer "foods_id", null: false
    t.float "amount"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["foods_id"], name: "index_order_foods_on_foods_id"
    t.index ["orders_id"], name: "index_order_foods_on_orders_id"
  end

  create_table "orders", force: :cascade do |t|
    t.float "amount"
    t.string "status"
    t.integer "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_orders_on_users_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "persons"
    t.integer "phone_no"
    t.time "time"
    t.date "date"
    t.string "special_request"
    t.integer "user_id"
    t.integer "dining_table_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dining_table_id"], name: "index_reservations_on_dining_table_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_no", limit: 15
    t.string "gender"
    t.string "address"
    t.string "landmark"
    t.string "city"
    t.string "state"
    t.string "country"
    t.integer "zip_code", limit: 6
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "food_categories", "categories"
  add_foreign_key "food_categories", "foods"
  add_foreign_key "order_foods", "foods", column: "foods_id"
  add_foreign_key "order_foods", "orders", column: "orders_id"
end
