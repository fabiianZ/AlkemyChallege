# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_02_18_193109) do
  create_table "character_movies", force: :cascade do |t|
    t.integer "character_id", null: false
    t.integer "movie_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_character_movies_on_character_id"
    t.index ["movie_id"], name: "index_character_movies_on_movie_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "image"
    t.string "name"
    t.integer "age"
    t.integer "weight"
    t.text "history"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string "image"
    t.string "gendername"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "image"
    t.string "tittle"
    t.datetime "creationdate"
    t.integer "qualification"
    t.integer "gender_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gender_id"], name: "index_movies_on_gender_id"
  end

  add_foreign_key "character_movies", "characters"
  add_foreign_key "character_movies", "movies"
  add_foreign_key "movies", "genders"
end
