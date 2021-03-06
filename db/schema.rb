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

ActiveRecord::Schema.define(version: 20141105170310) do

  create_table "events", force: true do |t|
    t.string   "title",             limit: 255
    t.integer  "event_thumb",       limit: 4
    t.string   "venue",             limit: 255
    t.integer  "total_tickets",     limit: 4
    t.integer  "available_tickets", limit: 4
    t.integer  "user_id",           limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.datetime "when_at"
  end

  add_index "events", ["user_id", "created_at"], name: "index_events_on_user_id_and_created_at", using: :btree
  add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree

  create_table "orders", force: true do |t|
    t.integer  "user_id",           limit: 4
    t.integer  "event_id",          limit: 4
    t.integer  "tickets_purchased", limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "orders", ["event_id"], name: "index_orders_on_event_id", using: :btree
  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name",            limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "password_digest", limit: 255
  end

  add_index "users", ["name"], name: "index_users_on_name", unique: true, using: :btree

end
