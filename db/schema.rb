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

ActiveRecord::Schema.define(version: 2022_08_19_100632) do

  create_table "add_ons", force: :cascade do |t|
    t.string "add_on_item"
    t.integer "menu_item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menu_item_id"], name: "index_add_ons_on_menu_item_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
  end

  create_table "deals", force: :cascade do |t|
    t.date "date_active_from"
    t.date "date_active_to"
    t.time "time_active_from"
    t.time "time_active_to"
    t.integer "discount_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.index ["discount_id"], name: "index_deals_on_discount_id"
  end

  create_table "discounts", force: :cascade do |t|
    t.integer "discount_percent"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "contact"
    t.string "position"
    t.integer "manager_id"
    t.integer "restaurant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurant_id"], name: "index_employees_on_restaurant_id"
  end

  create_table "menu_add_ons", force: :cascade do |t|
    t.integer "add_on_id", null: false
    t.integer "menu_item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["add_on_id"], name: "index_menu_add_ons_on_add_on_id"
    t.index ["menu_item_id"], name: "index_menu_add_ons_on_menu_item_id"
  end

# Could not dump table "menu_categories" because of following StandardError
#   Unknown type '' for column 'references'

  create_table "menu_items", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.integer "quantity"
    t.integer "deal_id", null: false
    t.integer "discount_id", null: false
    t.integer "menu_of_category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["deal_id"], name: "index_menu_items_on_deal_id"
    t.index ["discount_id"], name: "index_menu_items_on_discount_id"
    t.index ["menu_of_category_id"], name: "index_menu_items_on_menu_of_category_id"
  end

  create_table "menu_of_categories", force: :cascade do |t|
    t.string "category_name"
    t.integer "restaurant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurant_id"], name: "index_menu_of_categories_on_restaurant_id"
  end

  create_table "menu_options", force: :cascade do |t|
    t.integer "menu_item_id", null: false
    t.integer "option_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menu_item_id"], name: "index_menu_options_on_menu_item_id"
    t.index ["option_id"], name: "index_menu_options_on_option_id"
  end

  create_table "options", force: :cascade do |t|
    t.string "item"
    t.string "description"
    t.float "price"
    t.integer "menu_item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menu_item_id"], name: "index_options_on_menu_item_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "order_id", null: false
    t.integer "menu_item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menu_item_id"], name: "index_order_items_on_menu_item_id"
    t.index ["order_id"], name: "index_order_items_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.float "total_amount"
    t.time "time"
    t.date "date"
    t.float "quantity"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "restaurant_id", null: false
    t.integer "customer_id"
    t.integer "payment_id"
    t.integer "voucher_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["payment_id"], name: "index_orders_on_payment_id"
    t.index ["restaurant_id"], name: "index_orders_on_restaurant_id"
    t.index ["voucher_id"], name: "index_orders_on_voucher_id"
  end

  create_table "payments", force: :cascade do |t|
    t.string "method"
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.integer "contact"
    t.string "status"
    t.time "time_open_at"
    t.time "time_close_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vouchers", force: :cascade do |t|
    t.boolean "status"
    t.integer "promo_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "add_ons", "menu_items"
  add_foreign_key "deals", "discounts"
  add_foreign_key "employees", "restaurants"
  add_foreign_key "menu_add_ons", "add_ons"
  add_foreign_key "menu_add_ons", "menu_items"
  add_foreign_key "menu_categories", "restaurants"
  add_foreign_key "menu_items", "deals"
  add_foreign_key "menu_items", "discounts"
  add_foreign_key "menu_items", "menu_of_categories"
  add_foreign_key "menu_of_categories", "restaurants"
  add_foreign_key "menu_options", "menu_items"
  add_foreign_key "menu_options", "options"
  add_foreign_key "options", "menu_items"
  add_foreign_key "order_items", "menu_items"
  add_foreign_key "order_items", "orders"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "payments"
  add_foreign_key "orders", "restaurants"
  add_foreign_key "orders", "vouchers"
end
