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

ActiveRecord::Schema.define(version: 20150913025548) do

  create_table "citytowns", force: :cascade do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "state"
  end

  add_index "citytowns", ["country_id"], name: "index_citytowns_on_country_id"

  create_table "comments", force: :cascade do |t|
    t.string   "content"
    t.integer  "story_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["story_id"], name: "index_comments_on_story_id"

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "continent"
  end

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.integer  "citytown_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "tipo"
  end

  add_index "places", ["citytown_id"], name: "index_places_on_citytown_id"

  create_table "stories", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "content"
    t.string   "tittle"
    t.date     "date"
  end

  add_index "stories", ["place_id"], name: "index_stories_on_place_id"
  add_index "stories", ["user_id"], name: "index_stories_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.string   "mail"
    t.string   "token"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "salt"
  end

end
