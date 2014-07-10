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

ActiveRecord::Schema.define(version: 20140710103440) do

  create_table "businesses", force: true do |t|
    t.string   "logo"
    t.string   "name"
    t.string   "description"
    t.string   "owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "businesses_users", id: false, force: true do |t|
    t.integer "user_id",     null: false
    t.integer "business_id", null: false
  end

  add_index "businesses_users", ["business_id", "user_id"], name: "index_businesses_users_on_business_id_and_user_id", using: :btree
  add_index "businesses_users", ["user_id", "business_id"], name: "index_businesses_users_on_user_id_and_business_id", using: :btree

  create_table "invitations", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "business_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_businesses", id: false, force: true do |t|
    t.integer "user_id_id",     null: false
    t.integer "business_id_id", null: false
  end

end
