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

ActiveRecord::Schema.define(version: 2022_08_30_080025) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "add_ons", force: :cascade do |t|
    t.string "item_name"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "customers", force: :cascade do |t|
    t.string "contact"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
  end

  create_table "deal_items", force: :cascade do |t|
    t.integer "deal_id", null: false
    t.string "dealable_type", null: false
    t.integer "dealable_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["deal_id"], name: "index_deal_items_on_deal_id"
    t.index ["dealable_type", "dealable_id"], name: "index_deal_items_on_dealable"
  end

  create_table "deals", force: :cascade do |t|
    t.string "name"
    t.date "date_active_from"
    t.date "date_active_to"
    t.time "time_active_from"
    t.time "time_active_to"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "discounts", force: :cascade do |t|
    t.integer "discount_percent"
    t.string "discount_type"
    t.integer "voucher_id", null: false
    t.integer "restaurant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurant_id"], name: "index_discounts_on_restaurant_id"
    t.index ["voucher_id"], name: "index_discounts_on_voucher_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "position"
    t.integer "manager_id"
    t.integer "restaurant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_employees_on_email", unique: true
    t.index ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true
    t.index ["restaurant_id"], name: "index_employees_on_restaurant_id"
  end

  create_table "food_items", force: :cascade do |t|
    t.integer "quantity"
    t.string "name"
    t.float "price"
    t.integer "deal_id", null: false
    t.integer "discount_id", null: false
    t.integer "group_item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["deal_id"], name: "index_food_items_on_deal_id"
    t.index ["discount_id"], name: "index_food_items_on_discount_id"
    t.index ["group_item_id"], name: "index_food_items_on_group_item_id"
  end

  create_table "food_option_prices", force: :cascade do |t|
    t.float "price"
    t.integer "food_item_id", null: false
    t.integer "option_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["food_item_id"], name: "index_food_option_prices_on_food_item_id"
    t.index ["option_id"], name: "index_food_option_prices_on_option_id"
  end

  create_table "group_items", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "menu_add_ons", force: :cascade do |t|
    t.integer "menu_item_id", null: false
    t.integer "add_on_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["add_on_id"], name: "index_menu_add_ons_on_add_on_id"
    t.index ["menu_item_id"], name: "index_menu_add_ons_on_menu_item_id"
  end

  create_table "menu_items", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "menuable_type", null: false
    t.integer "menuable_id", null: false
    t.integer "menu_id"
    t.index ["menu_id"], name: "index_menu_items_on_menu_id"
    t.index ["menuable_type", "menuable_id"], name: "index_menu_items_on_menuable"
  end

  create_table "menu_options", force: :cascade do |t|
    t.integer "menu_item_id", null: false
    t.integer "option_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menu_item_id"], name: "index_menu_options_on_menu_item_id"
    t.index ["option_id"], name: "index_menu_options_on_option_id"
  end

  create_table "menu_timings", force: :cascade do |t|
    t.time "open_to"
    t.time "open_from"
    t.integer "menu_id", null: false
    t.integer "weekday_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menu_id"], name: "index_menu_timings_on_menu_id"
    t.index ["weekday_id"], name: "index_menu_timings_on_weekday_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "name"
    t.integer "restaurant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurant_id"], name: "index_menus_on_restaurant_id"
  end

  create_table "options", force: :cascade do |t|
    t.string "item_name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "order_histories", force: :cascade do |t|
    t.integer "food_item_id", null: false
    t.integer "order_item_id", null: false
    t.integer "deal_id", null: false
    t.integer "group_item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["deal_id"], name: "index_order_histories_on_deal_id"
    t.index ["food_item_id"], name: "index_order_histories_on_food_item_id"
    t.index ["group_item_id"], name: "index_order_histories_on_group_item_id"
    t.index ["order_item_id"], name: "index_order_histories_on_order_item_id"
  end

  create_table "order_item_add_ons", force: :cascade do |t|
    t.integer "quantity"
    t.integer "order_item_id", null: false
    t.integer "add_on_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["add_on_id"], name: "index_order_item_add_ons_on_add_on_id"
    t.index ["order_item_id"], name: "index_order_item_add_ons_on_order_item_id"
  end

  create_table "order_item_options", force: :cascade do |t|
    t.integer "quantity"
    t.integer "order_item_id", null: false
    t.integer "option_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["option_id"], name: "index_order_item_options_on_option_id"
    t.index ["order_item_id"], name: "index_order_item_options_on_order_item_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "order_id", null: false
    t.string "orderable_type", null: false
    t.integer "orderable_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["orderable_type", "orderable_id"], name: "index_order_items_on_orderable"
  end

  create_table "order_statuses", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "total_amount"
    t.datetime "date_time"
    t.string "description"
    t.integer "customer_id", null: false
    t.integer "payment_id", null: false
    t.integer "restaurant_id", null: false
    t.integer "rating_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "voucher_id"
    t.integer "order_status_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["order_status_id"], name: "index_orders_on_order_status_id"
    t.index ["payment_id"], name: "index_orders_on_payment_id"
    t.index ["rating_id"], name: "index_orders_on_rating_id"
    t.index ["restaurant_id"], name: "index_orders_on_restaurant_id"
    t.index ["voucher_id"], name: "index_orders_on_voucher_id"
  end

  create_table "payment_cut_offs", force: :cascade do |t|
    t.integer "admin_percent"
    t.integer "admin_amount"
    t.integer "restaurant_percent"
    t.integer "restaurant_amount"
    t.integer "total_amount"
    t.integer "payment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["payment_id"], name: "index_payment_cut_offs_on_payment_id"
  end

  create_table "payments", force: :cascade do |t|
    t.string "method"
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.float "rating"
    t.date "date_recorded"
    t.string "remarks"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "restaurant_timings", force: :cascade do |t|
    t.time "open_to"
    t.time "open_from"
    t.integer "restaurant_id", null: false
    t.integer "weekday_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurant_id"], name: "index_restaurant_timings_on_restaurant_id"
    t.index ["weekday_id"], name: "index_restaurant_timings_on_weekday_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "contact"
    t.string "name"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "voucher_timelines", force: :cascade do |t|
    t.datetime "valid_to"
    t.datetime "valid_from"
    t.integer "voucher_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["voucher_id"], name: "index_voucher_timelines_on_voucher_id"
  end

  create_table "vouchers", force: :cascade do |t|
    t.boolean "voucher_status"
    t.integer "promo_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weekdays", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "deal_items", "deals"
  add_foreign_key "discounts", "restaurants"
  add_foreign_key "discounts", "vouchers"
  add_foreign_key "employees", "restaurants"
  add_foreign_key "food_items", "deals"
  add_foreign_key "food_items", "discounts"
  add_foreign_key "food_items", "group_items"
  add_foreign_key "food_option_prices", "food_items"
  add_foreign_key "food_option_prices", "options"
  add_foreign_key "menu_add_ons", "add_ons"
  add_foreign_key "menu_add_ons", "menu_items"
  add_foreign_key "menu_items", "menus"
  add_foreign_key "menu_options", "menu_items"
  add_foreign_key "menu_options", "options"
  add_foreign_key "menu_timings", "menus"
  add_foreign_key "menu_timings", "weekdays"
  add_foreign_key "menus", "restaurants"
  add_foreign_key "order_histories", "deals"
  add_foreign_key "order_histories", "food_items"
  add_foreign_key "order_histories", "group_items"
  add_foreign_key "order_histories", "order_items"
  add_foreign_key "order_item_add_ons", "add_ons"
  add_foreign_key "order_item_add_ons", "order_items"
  add_foreign_key "order_item_options", "options"
  add_foreign_key "order_item_options", "order_items"
  add_foreign_key "order_items", "orders"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "order_statuses"
  add_foreign_key "orders", "payments"
  add_foreign_key "orders", "ratings"
  add_foreign_key "orders", "restaurants"
  add_foreign_key "orders", "vouchers"
  add_foreign_key "payment_cut_offs", "payments"
  add_foreign_key "restaurant_timings", "restaurants"
  add_foreign_key "restaurant_timings", "weekdays"
  add_foreign_key "voucher_timelines", "vouchers"
end
