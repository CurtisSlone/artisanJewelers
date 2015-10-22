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

ActiveRecord::Schema.define(version: 20150907153720) do

  create_table "items", force: :cascade do |t|
    t.integer  "jewelrygroup_id"
    t.integer  "jewelrycategory_id"
    t.integer  "jewelrycollection_id"
    t.integer  "jewelrymetal_id"
    t.string   "name"
    t.integer  "upc"
    t.float    "price"
    t.text     "description"
    t.string   "location"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "items", ["jewelrycategory_id"], name: "index_items_on_jewelrycategory_id"
  add_index "items", ["jewelrycollection_id"], name: "index_items_on_jewelrycollection_id"
  add_index "items", ["jewelrygroup_id"], name: "index_items_on_jewelrygroup_id"
  add_index "items", ["jewelrymetal_id"], name: "index_items_on_jewelrymetal_id"

  create_table "jewelrycategories", force: :cascade do |t|
    t.string   "jewelrycategory"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "jewelrycollections", force: :cascade do |t|
    t.string   "jewelcollection"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "jewelrygroups", force: :cascade do |t|
    t.string   "jewelrygroup"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "jewelrymetals", force: :cascade do |t|
    t.string   "metal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.float    "line_item_total"
    t.integer  "order_id"
    t.integer  "item_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "orders", force: :cascade do |t|
    t.float    "subtotal"
    t.float    "sales_tax"
    t.float    "grand_total"
    t.text     "order_items"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "orders", ["user_id"], name: "index_orders_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
