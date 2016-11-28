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

ActiveRecord::Schema.define(version: 20161127085634) do

  create_table "exposures", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "num",        precision: 5, scale: 1
  end

  create_table "images", force: :cascade do |t|
    t.integer  "user_id",     limit: 4
    t.integer  "subject_id",  limit: 4
    t.text     "image_url",   limit: 65535
    t.decimal  "f_value",                   precision: 3, scale: 1
    t.decimal  "exposure",                  precision: 3, scale: 1
    t.text     "wb",          limit: 65535
    t.text     "lens",        limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "image_file",  limit: 65535
    t.integer  "review_id",   limit: 4
    t.text     "title",       limit: 65535
    t.text     "comment",     limit: 65535
    t.text     "title2",      limit: 65535
    t.text     "comment2",    limit: 65535
    t.decimal  "f_value2",                  precision: 3, scale: 1
    t.decimal  "exposure2",                 precision: 3, scale: 1
    t.string   "wb2",         limit: 255
    t.text     "title3",      limit: 65535
    t.text     "comment3",    limit: 65535
    t.decimal  "f_value3",                  precision: 3, scale: 1
    t.decimal  "exposure3",                 precision: 3, scale: 1
    t.string   "wb3",         limit: 255
    t.text     "image_file2", limit: 65535
    t.text     "image_file3", limit: 65535
  end

  create_table "prefectures", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "subject_id", limit: 4
    t.integer  "rate",       limit: 4
    t.text     "comment",    limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.string   "name",       limit: 255
    t.string   "prefecture", limit: 255
    t.string   "area",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "image_id",   limit: 4
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "nickname",               limit: 255
    t.string   "camera",                 limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
