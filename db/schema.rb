# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_16_191621) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.integer "tmdb_id"
    t.string "poster_path"
    t.string "backdrop_path"
    t.string "overview"
    t.string "release_date"
    t.integer "genre_ids", array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["genre_ids"], name: "index_movies_on_genre_ids", using: :gin
  end

  create_table "shows", force: :cascade do |t|
    t.string "name"
    t.integer "tmdb_id"
    t.string "poster_path"
    t.string "backdrop_path"
    t.string "overview"
    t.string "first_air_date"
    t.integer "genre_ids", array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["genre_ids"], name: "index_shows_on_genre_ids", using: :gin
  end

end
