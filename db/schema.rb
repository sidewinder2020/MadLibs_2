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

ActiveRecord::Schema.define(version: 20170907195603) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ratings", force: :cascade do |t|
    t.bigint "user_story_id"
    t.bigint "user_id"
    t.string "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_ratings_on_user_id"
    t.index ["user_story_id"], name: "index_ratings_on_user_story_id"
  end

  create_table "stories", force: :cascade do |t|
    t.string "name_1"
    t.string "verb_1"
    t.string "adj_1"
    t.string "adv_1"
    t.string "fam"
    t.string "name_2"
    t.string "number"
    t.string "verb_2"
    t.string "noun_1"
    t.string "mil_rank"
    t.string "adj_2"
    t.string "adj_3"
    t.string "adj_4"
    t.string "noun_2"
    t.string "award"
    t.string "adj_5"
    t.string "name_3"
    t.string "verb_3"
    t.string "noun_3"
    t.string "verb_4"
    t.string "adj_6"
    t.string "verb_5"
    t.string "verb_6"
    t.string "emotion"
    t.string "name_4"
    t.string "picture", default: "https://www.shitpostbot.com/img/sourceimages/man-crab-57b99a792f360.jpeg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_stories", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "story_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["story_id"], name: "index_user_stories_on_story_id"
    t.index ["user_id"], name: "index_user_stories_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "picture", default: "https://www.shitpostbot.com/img/sourceimages/man-crab-57b99a792f360.jpeg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "ratings", "user_stories"
  add_foreign_key "ratings", "users"
  add_foreign_key "user_stories", "stories"
  add_foreign_key "user_stories", "users"
end
