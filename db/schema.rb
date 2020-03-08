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

ActiveRecord::Schema.define(version: 2020_03_08_211048) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "arriendos", force: :cascade do |t|
    t.string "kind"
    t.bigint "users_id"
    t.bigint "films_id"
    t.bigint "series_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["films_id"], name: "index_arriendos_on_films_id"
    t.index ["series_id"], name: "index_arriendos_on_series_id"
    t.index ["users_id"], name: "index_arriendos_on_users_id"
  end

  create_table "films", force: :cascade do |t|
    t.string "title"
    t.string "gender"
    t.integer "price"
    t.string "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "series", force: :cascade do |t|
    t.string "title"
    t.string "gender"
    t.integer "price"
    t.string "season"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "arriendos", "films", column: "films_id"
  add_foreign_key "arriendos", "series"
  add_foreign_key "arriendos", "users", column: "users_id"
end
