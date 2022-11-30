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

ActiveRecord::Schema[7.0].define(version: 2022_11_30_183919) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "episodes", force: :cascade do |t|
    t.string "title"
    t.decimal "year"
    t.string "language"
    t.string "localization"
    t.decimal "episodeNumber"
    t.bigint "season_id"
    t.index ["season_id"], name: "index_episodes_on_season_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
  end

  create_table "movie_genres", force: :cascade do |t|
    t.bigint "movie_id"
    t.bigint "episode_id"
    t.bigint "genre_id"
    t.index ["episode_id"], name: "index_movie_genres_on_episode_id"
    t.index ["genre_id"], name: "index_movie_genres_on_genre_id"
    t.index ["movie_id"], name: "index_movie_genres_on_movie_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.decimal "year"
    t.string "language"
    t.string "localization"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "roleName"
    t.bigint "movie_id"
    t.bigint "episode_id"
    t.index ["episode_id"], name: "index_roles_on_episode_id"
    t.index ["movie_id"], name: "index_roles_on_movie_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.decimal "seasonNumber"
    t.bigint "serie_id"
    t.index ["serie_id"], name: "index_seasons_on_serie_id"
  end

  create_table "series", force: :cascade do |t|
    t.string "title"
    t.decimal "year"
    t.string "language"
    t.string "localization"
    t.datetime "startDate"
    t.datetime "endDate"
  end

  add_foreign_key "episodes", "seasons"
  add_foreign_key "movie_genres", "episodes"
  add_foreign_key "movie_genres", "genres"
  add_foreign_key "movie_genres", "movies"
  add_foreign_key "roles", "episodes"
  add_foreign_key "roles", "movies"
  add_foreign_key "seasons", "series", column: "serie_id"
end
