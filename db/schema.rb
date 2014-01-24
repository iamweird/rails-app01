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

ActiveRecord::Schema.define(version: 20140124083749) do

  create_table "cities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "districts", force: true do |t|
    t.string   "name"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "districts", ["city_id"], name: "index_districts_on_city_id", using: :btree

  create_table "flat_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "flats", force: true do |t|
    t.decimal  "lon",                precision: 18, scale: 14
    t.decimal  "lat",                precision: 18, scale: 14
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "area",               precision: 7,  scale: 1
    t.integer  "people"
    t.integer  "neighbours",                                   default: 0
    t.string   "house"
    t.string   "flat"
    t.boolean  "pubutil_included"
    t.integer  "district_id"
    t.integer  "city_id"
    t.integer  "flat_type_id"
    t.integer  "rooms"
    t.integer  "street_id"
    t.integer  "floor"
    t.boolean  "phone"
    t.integer  "internet_type_id"
    t.decimal  "internet_speed_mbs", precision: 7,  scale: 1
    t.boolean  "with_owner"
    t.boolean  "cable_tv"
    t.string   "facilities",                                   default: "---\n:bathroom: 0\n:bath: 0\n:wc: 0\n:hot_water: 0\n:heating: 0\n:renovated: false\n:plastic_windows: false\n:false_ceiling: false\n:warm_floor: false\n"
  end

  add_index "flats", ["city_id"], name: "index_flats_on_city_id", using: :btree
  add_index "flats", ["district_id"], name: "index_flats_on_district_id", using: :btree
  add_index "flats", ["flat_type_id"], name: "index_flats_on_flat_type_id", using: :btree
  add_index "flats", ["internet_type_id"], name: "index_flats_on_internet_type_id", using: :btree
  add_index "flats", ["street_id"], name: "index_flats_on_street_id", using: :btree

  create_table "internet_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "streets", force: true do |t|
    t.string   "name"
    t.integer  "city_id"
    t.integer  "district_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "streets", ["city_id"], name: "index_streets_on_city_id", using: :btree
  add_index "streets", ["district_id"], name: "index_streets_on_district_id", using: :btree

end
