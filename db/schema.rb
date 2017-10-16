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

ActiveRecord::Schema.define(version: 20171010090642) do

  create_table "dogkartes", force: true do |t|
    t.integer  "dog_id",                              null: false
    t.integer  "owner_id",                            null: false
    t.datetime "training_date"
    t.integer  "training_session",       limit: 3
    t.integer  "training_times",         limit: 3
    t.integer  "training_status",        limit: 3
    t.integer  "training_dogwalk_times", limit: 3
    t.integer  "training_dogwalk_hours", limit: 3
    t.string   "training_detail",        limit: 1000
    t.string   "training_image_path1",   limit: 50
    t.string   "training_image_path2",   limit: 50
    t.string   "training_image_path3",   limit: 50
    t.string   "training_image_path4",   limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dogs", force: true do |t|
    t.integer  "user_id",                                        null: false
    t.integer  "owner_id",                                       null: false
    t.string   "dog_name",          limit: 20
    t.string   "dog_breed",         limit: 50
    t.datetime "dog_birthday"
    t.string   "dog_image_path",    limit: 50
    t.string   "food_type",         limit: 20
    t.integer  "food_times",        limit: 3
    t.string   "favorite_snack1",   limit: 20
    t.string   "favorite_snack2",   limit: 20
    t.string   "favorite_snack3",   limit: 20
    t.string   "favorite_toy1",     limit: 20
    t.string   "favorite_toy2",     limit: 20
    t.string   "favorite_toy3",     limit: 20
    t.integer  "dogwalk_times",     limit: 3
    t.integer  "dogwalk_hours",     limit: 3
    t.string   "character1",        limit: 1
    t.string   "character2",        limit: 1
    t.string   "character3",        limit: 1
    t.string   "character4",        limit: 1
    t.string   "character5",        limit: 1
    t.string   "character6",        limit: 1
    t.string   "character7",        limit: 1
    t.string   "character8",        limit: 1
    t.string   "clinical_history1", limit: 20
    t.string   "clinical_history2", limit: 20
    t.string   "clinical_history3", limit: 20
    t.string   "clinical_history4", limit: 20
    t.string   "clinical_history5", limit: 20
    t.string   "command_language",  limit: 10
    t.boolean  "basic_command1",                 default: false
    t.boolean  "basic_command2",                 default: false
    t.boolean  "basic_command3",                 default: false
    t.boolean  "basic_command4",                 default: false
    t.boolean  "basic_command5",                 default: false
    t.boolean  "basic_command6",                 default: false
    t.string   "applied_command1",  limit: 10
    t.string   "applied_command2",  limit: 10
    t.string   "applied_command3",  limit: 10
    t.string   "applied_command4",  limit: 10
    t.string   "applied_command5",  limit: 10
    t.text     "notes",             limit: 1000
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "owners", force: true do |t|
    t.integer  "user_id",                       null: false
    t.integer  "dog_id"
    t.string   "owner_lastname",   limit: 20
    t.string   "owner_firstname",  limit: 20
    t.datetime "owner_birthday"
    t.string   "job",              limit: 20
    t.string   "zipcode1",         limit: 10
    t.string   "zipcode2",         limit: 10
    t.string   "province",         limit: 10
    t.string   "prefecture_code"
    t.string   "city",             limit: 20
    t.string   "street",           limit: 20
    t.string   "phone_number1",    limit: 5
    t.string   "phone_number2",    limit: 5
    t.string   "phone_number3",    limit: 5
    t.string   "family1",          limit: 5
    t.string   "family2",          limit: 5
    t.string   "family3",          limit: 5
    t.string   "family4",          limit: 5
    t.string   "family5",          limit: 5
    t.datetime "family1_birthday"
    t.datetime "family2_birthday"
    t.datetime "family3_birthday"
    t.datetime "family4_birthday"
    t.datetime "family5_birthday"
    t.string   "house_type",       limit: 10
    t.integer  "house_floor",      limit: 3
    t.string   "main_manager",     limit: 5
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
