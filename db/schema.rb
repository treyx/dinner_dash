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

ActiveRecord::Schema.define(version: 20150319004956) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.text   "description"
  end

  create_table "items", force: :cascade do |t|
    t.text     "title"
    t.text     "description"
    t.integer  "price"
    t.integer  "status",               default: 0
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  create_table "items_categories", force: :cascade do |t|
    t.integer "item_id"
    t.integer "category_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.hstore   "cart_items"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "status",     default: 0
  end

  create_table "users", force: :cascade do |t|
    t.text    "password_digest"
    t.text    "email"
    t.text    "full_name"
    t.integer "role",            default: 0
    t.text    "display_name"
  end

end
