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

ActiveRecord::Schema.define(version: 20140923184759) do

  create_table "adults", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "address"
    t.boolean  "text_messagable"
    t.boolean  "irregular_attendance"
    t.integer  "family_id"
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

  add_index "adults", ["email"], name: "index_adults_on_email", unique: true
  add_index "adults", ["reset_password_token"], name: "index_adults_on_reset_password_token", unique: true

  create_table "children", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birthday"
    t.boolean  "always_with_parent"
    t.integer  "family_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "course_adults", force: true do |t|
    t.integer  "course_id"
    t.integer  "adult_id"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "course_children", force: true do |t|
    t.integer  "course_id"
    t.integer  "child_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "minimum_age"
    t.integer  "maximum_age"
    t.boolean  "age_range_firm"
    t.integer  "minimum_student_count"
    t.integer  "maximum_student_count"
    t.string   "room_requirements"
    t.string   "time_requirements"
    t.string   "drop_ins_allowed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "families", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
