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

ActiveRecord::Schema.define(version: 20150831141301) do

  create_table "cars", force: :cascade do |t|
    t.string   "number",     limit: 255
    t.string   "model",      limit: 255
    t.integer  "year",       limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "car_kind",   limit: 255
  end

  create_table "event_cars", force: :cascade do |t|
    t.integer  "car_id",     limit: 4
    t.integer  "event_id",   limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "event_cars", ["car_id"], name: "index_event_cars_on_car_id", using: :btree
  add_index "event_cars", ["event_id"], name: "index_event_cars_on_event_id", using: :btree

  create_table "event_places", force: :cascade do |t|
    t.integer  "place_id",   limit: 4
    t.integer  "event_id",   limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "event_places", ["event_id"], name: "index_event_places_on_event_id", using: :btree
  add_index "event_places", ["place_id"], name: "index_event_places_on_place_id", using: :btree

  create_table "events", force: :cascade do |t|
    t.datetime "begin_time"
    t.datetime "end_time"
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "places", force: :cascade do |t|
    t.string   "address",    limit: 255
    t.string   "city",       limit: 255
    t.string   "landmark",   limit: 255
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.decimal  "latitude",               precision: 5, scale: 2
    t.decimal  "longitude",              precision: 5, scale: 2
  end

end
