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

ActiveRecord::Schema.define(version: 20161204064144) do

  create_table "exposures", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "num",        precision: 5, scale: 1
  end

  create_table "images", force: :cascade do |t|
    t.integer  "user_id",     limit: 4
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
    t.integer  "subject_id",  limit: 4
    t.integer  "likes_count", limit: 4
  end

  create_table "likes", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "image_id",   limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "maps", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "subject_id", limit: 4
    t.decimal  "latitude",             precision: 11, scale: 8
    t.decimal  "longitude",            precision: 11, scale: 8
  end

  create_table "prefectures", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "user_id",        limit: 4
    t.integer  "subject_id",     limit: 4
    t.integer  "rate",           limit: 4
    t.text     "comment",        limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "num_rate",       limit: 4
    t.integer  "challenge_rate", limit: 4
    t.integer  "envir_rate",     limit: 4
    t.integer  "access_rate",    limit: 4
  end

  add_index "reviews", ["user_id", "subject_id"], name: "index_reviews_on_user_id_and_subject_id", unique: true, using: :btree

  create_table "subjects", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.string   "name",       limit: 255
    t.string   "prefecture", limit: 255
    t.string   "area",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subjects", ["name"], name: "index_subjects_on_name", unique: true, using: :btree

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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
