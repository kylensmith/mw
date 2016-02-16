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

ActiveRecord::Schema.define(version: 20160216181143) do

  create_table "admins", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brackets", force: :cascade do |t|
    t.integer  "event_id"
    t.string   "name"
    t.string   "sponsor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "competitor_brackets", force: :cascade do |t|
    t.integer  "competitor_id"
    t.integer  "bracket_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "competitor_drafts", force: :cascade do |t|
    t.integer  "draft_id"
    t.integer  "bracket_id"
    t.integer  "competitor_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "competitors", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "team"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "directors", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drafts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "event_name"
    t.string   "year"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "group_events", force: :cascade do |t|
    t.integer  "group_id"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "gname"
    t.integer  "gtype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invitations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "director_id"
    t.integer  "group_id"
    t.integer  "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "matches", force: :cascade do |t|
    t.integer  "first_competitor_id"
    t.string   "first_competitor_team"
    t.integer  "second_competitor_id"
    t.string   "second_competitor_team"
    t.integer  "bracket_id"
    t.integer  "bracket_round"
    t.integer  "round_match"
    t.integer  "result"
    t.integer  "winning_competitor"
    t.integer  "advancement_points"
    t.integer  "placement_points"
    t.integer  "tournament_match_number"
    t.integer  "match_points"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "fname"
    t.string   "lname"
    t.string   "username"
    t.text     "bio"
    t.string   "city"
    t.string   "state"
    t.string   "mobile"
    t.date     "birthday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projections", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "first_competitor_id"
    t.string   "first_competitor_team"
    t.integer  "second_competitor_id"
    t.string   "second_competitor_team"
    t.integer  "bracket_id"
    t.integer  "bracket_round"
    t.integer  "round_match"
    t.integer  "result"
    t.integer  "winning_competitor"
    t.boolean  "pick_status"
    t.integer  "advancement_points"
    t.integer  "placement_points"
    t.integer  "tournament_match_number"
    t.integer  "match_points"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "results", force: :cascade do |t|
    t.integer  "competitor_id"
    t.integer  "bracket_id"
    t.integer  "bracket_round"
    t.integer  "round_match"
    t.integer  "result"
    t.integer  "winning_competitor"
    t.integer  "advancement_points"
    t.integer  "placement_points"
    t.integer  "match_points"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "profile_id"
    t.string   "password"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
