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

ActiveRecord::Schema.define(version: 20170930104159) do

  create_table "owners", force: true do |t|
    t.integer  "user_id",                       null: false
    t.string   "owner_lastname",   limit: 20
    t.string   "owner_firstname",  limit: 20
    t.datetime "owner_birthday"
    t.string   "job",              limit: 20
    t.integer  "zipcode",          limit: 10
    t.string   "province",         limit: 10
    t.string   "city",             limit: 20
    t.string   "street",           limit: 20
    t.integer  "phone_number",     limit: 15
    t.integer  "family1",          limit: 3
    t.integer  "family2",          limit: 3
    t.integer  "family3",          limit: 3
    t.integer  "family4",          limit: 3
    t.integer  "family5",          limit: 3
    t.datetime "family1_birthday", limit: 3
    t.datetime "family2_birthday", limit: 3
    t.datetime "family3_birthday", limit: 3
    t.datetime "family4_birthday", limit: 3
    t.datetime "family5_birthday", limit: 3
    t.integer  "house_type",       limit: 3
    t.integer  "house_floor",      limit: 3
    t.integer  "main_manager",     limit: 3
    t.text     "notes",            limit: 1000
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
