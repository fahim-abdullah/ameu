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

ActiveRecord::Schema.define(version: 2019_06_16_184344) do

  create_table "dialogues", force: :cascade do |t|
    t.string "title"
    t.string "interviewee"
    t.string "video_link"
    t.string "dialoguepic"
  end

  create_table "econsiders", force: :cascade do |t|
    t.string "title"
    t.string "post_heading"
    t.string "author"
    t.text "post"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "postimg"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "datetime"
    t.string "venue"
    t.string "link"
    t.string "eventpic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "region"
    t.string "office"
    t.string "name"
    t.string "designation"
    t.string "facebook"
    t.string "linkedin"
    t.string "twitter"
    t.string "ig"
    t.string "email"
    t.string "profpic"
  end

end
