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

ActiveRecord::Schema.define(version: 20180814061247) do

  create_table "event_types", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "typology"
    t.integer "history_event_id"
    t.index ["history_event_id"], name: "index_event_types_on_history_event_id"
  end

  create_table "history_events", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "post_id"
    t.integer "event_type_id"
    t.index ["event_type_id"], name: "index_history_events_on_event_type_id"
    t.index ["post_id"], name: "index_history_events_on_post_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "abstract"
    t.text "quote"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "history_event_id"
    t.integer "event_type_id"
    t.index ["event_type_id"], name: "index_posts_on_event_type_id"
    t.index ["history_event_id"], name: "index_posts_on_history_event_id"
  end

end
