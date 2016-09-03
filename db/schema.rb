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

ActiveRecord::Schema.define(version: 20160903194413) do

  create_table "badges", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.integer  "minimum"
    t.integer  "mission_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "badges", ["mission_id"], name: "index_badges_on_mission_id"

  create_table "friends", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "friends", ["user_id"], name: "index_friends_on_user_id"

  create_table "groups", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "mission_id"
    t.boolean  "complete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "groups", ["mission_id"], name: "index_groups_on_mission_id"
  add_index "groups", ["user_id"], name: "index_groups_on_user_id"

  create_table "histories", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "steps"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "histories", ["user_id"], name: "index_histories_on_user_id"

  create_table "members", force: :cascade do |t|
    t.integer  "group_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "members", ["group_id"], name: "index_members_on_group_id"
  add_index "members", ["user_id"], name: "index_members_on_user_id"

  create_table "missions", force: :cascade do |t|
    t.date     "start_date"
    t.integer  "duration"
    t.string   "name"
    t.text     "description"
    t.integer  "steps"
    t.integer  "type"
    t.integer  "user_id"
    t.integer  "reward"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "missions", ["user_id"], name: "index_missions_on_user_id"

  create_table "tips", force: :cascade do |t|
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "handle"
    t.string   "firebase_id"
    t.string   "email"
    t.integer  "health"
    t.integer  "type"
    t.string   "api_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
