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

ActiveRecord::Schema.define(version: 20170501093132) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bl_houses", force: :cascade do |t|
    t.integer  "bl_master_id"
    t.integer  "bl_code"
    t.integer  "nvocc_id"
    t.integer  "client_id"
    t.integer  "container_list_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["bl_master_id"], name: "index_bl_houses_on_bl_master_id", using: :btree
    t.index ["client_id"], name: "index_bl_houses_on_client_id", using: :btree
    t.index ["container_list_id"], name: "index_bl_houses_on_container_list_id", using: :btree
    t.index ["nvocc_id"], name: "index_bl_houses_on_nvocc_id", using: :btree
  end

  create_table "bl_masters", force: :cascade do |t|
    t.integer  "shipping_company_id"
    t.integer  "nvocc_id"
    t.string   "commodity_origin"
    t.date     "dock_date"
    t.string   "travel_code"
    t.integer  "bl_code"
    t.string   "commodity_destination"
    t.integer  "ship_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["nvocc_id"], name: "index_bl_masters_on_nvocc_id", using: :btree
    t.index ["ship_id"], name: "index_bl_masters_on_ship_id", using: :btree
    t.index ["shipping_company_id"], name: "index_bl_masters_on_shipping_company_id", using: :btree
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "container_lists", force: :cascade do |t|
    t.integer  "container_id"
    t.integer  "bl_master_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["bl_master_id"], name: "index_container_lists_on_bl_master_id", using: :btree
    t.index ["container_id"], name: "index_container_lists_on_container_id", using: :btree
  end

  create_table "container_types", force: :cascade do |t|
    t.integer  "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "containers", force: :cascade do |t|
    t.string   "commodity"
    t.decimal  "size"
    t.string   "character"
    t.integer  "container_type_id"
    t.integer  "shipping_company_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["container_type_id"], name: "index_containers_on_container_type_id", using: :btree
    t.index ["shipping_company_id"], name: "index_containers_on_shipping_company_id", using: :btree
  end

  create_table "nvoccs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shipping_companies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ships", force: :cascade do |t|
    t.string   "name"
    t.integer  "shipping_company_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["shipping_company_id"], name: "index_ships_on_shipping_company_id", using: :btree
  end

  add_foreign_key "bl_houses", "bl_masters"
  add_foreign_key "bl_houses", "clients"
  add_foreign_key "bl_houses", "container_lists"
  add_foreign_key "bl_houses", "nvoccs"
  add_foreign_key "bl_masters", "nvoccs"
  add_foreign_key "bl_masters", "shipping_companies"
  add_foreign_key "bl_masters", "ships"
  add_foreign_key "container_lists", "bl_masters"
  add_foreign_key "container_lists", "containers"
  add_foreign_key "containers", "container_types"
  add_foreign_key "containers", "shipping_companies"
  add_foreign_key "ships", "shipping_companies"
end
