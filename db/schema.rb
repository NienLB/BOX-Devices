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

ActiveRecord::Schema.define(version: 20171102071403) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.integer  "priority",    default: 0
    t.text     "description"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["code"], name: "index_categories_on_code", using: :btree
  end

  create_table "devices", force: :cascade do |t|
    t.text     "id_code"
    t.string   "name"
    t.decimal  "price"
    t.string   "vendor"
    t.boolean  "status"
    t.text     "location"
    t.date     "date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "quantity"
    t.integer  "category_id"
  end

  create_table "type_devices", force: :cascade do |t|
    t.integer  "devices_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["devices_id"], name: "index_type_devices_on_devices_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "vendors", force: :cascade do |t|
    t.integer  "device_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "address"
    t.integer  "contact"
    t.string   "name"
    t.index ["device_id"], name: "index_vendors_on_device_id", using: :btree
  end

  add_foreign_key "type_devices", "devices", column: "devices_id"
  add_foreign_key "vendors", "devices"
end
