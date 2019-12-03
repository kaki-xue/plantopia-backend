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

ActiveRecord::Schema.define(version: 2019_12_03_093234) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: :cascade do |t|
    t.string "favoritable_type", null: false
    t.bigint "favoritable_id", null: false
    t.string "favoritor_type", null: false
    t.bigint "favoritor_id", null: false
    t.string "scope", default: "favorite", null: false
    t.boolean "blocked", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blocked"], name: "index_favorites_on_blocked"
    t.index ["favoritable_id", "favoritable_type"], name: "fk_favoritables"
    t.index ["favoritable_type", "favoritable_id"], name: "index_favorites_on_favoritable_type_and_favoritable_id"
    t.index ["favoritor_id", "favoritor_type"], name: "fk_favorites"
    t.index ["favoritor_type", "favoritor_id"], name: "index_favorites_on_favoritor_type_and_favoritor_id"
    t.index ["scope"], name: "index_favorites_on_scope"
  end

  create_table "messages", force: :cascade do |t|
    t.boolean "is_user"
    t.string "text"
    t.bigint "plant_chat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_chat_id"], name: "index_messages_on_plant_chat_id"
  end

  create_table "plant_chats", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "plant_id"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id"], name: "index_plant_chats_on_plant_id"
    t.index ["user_id"], name: "index_plant_chats_on_user_id"
  end

  create_table "plant_libraries", force: :cascade do |t|
    t.string "latin_name"
    t.string "average_height"
    t.string "light_preference"
    t.integer "water_freq_avg"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plants", force: :cascade do |t|
    t.bigint "user_id"
    t.string "nickname"
    t.string "image"
    t.integer "water_frequency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "plant_library_id"
    t.index ["plant_library_id"], name: "index_plants_on_plant_library_id"
    t.index ["user_id"], name: "index_plants_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "open_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "messages", "plant_chats"
  add_foreign_key "plant_chats", "plants"
  add_foreign_key "plant_chats", "users"
  add_foreign_key "plants", "plant_libraries"
  add_foreign_key "plants", "users"
end
