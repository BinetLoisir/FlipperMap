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

ActiveRecord::Schema.define(version: 20140913135422) do

  create_table "bars", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.float    "latitude",   limit: 24
    t.float    "longitude",  limit: 24
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "google_id"
  end

  add_index "bars", ["google_id"], name: "bars_ibfk_1", using: :btree

  create_table "cheap_bars", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.float    "latitude",       limit: 24
    t.float    "longitude",      limit: 24
    t.string   "url"
    t.float    "price",          limit: 24
    t.float    "original_price", limit: 24
    t.string   "happy_hour"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "google_id"
  end

  create_table "flippers", force: true do |t|
    t.string "name"
    t.float  "rating", limit: 24
    t.string "url"
  end

  create_table "google", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.float    "latitude",   limit: 24
    t.float    "longitude",  limit: 24
    t.float    "rating",     limit: 24
    t.string   "place_id"
    t.string   "old_id"
    t.string   "types"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "google", ["place_id"], name: "index_google_on_place_id", unique: true, using: :btree

  create_table "locations", force: true do |t|
    t.integer  "flipper_id"
    t.integer  "bar_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["bar_id"], name: "locations_ibfk_2", using: :btree
  add_index "locations", ["flipper_id"], name: "locations_ibfk_1", using: :btree

end
