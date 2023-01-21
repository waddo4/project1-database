ActiveRecord::Schema.define(version: 2023_01_20_110319) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.text "title"
    t.integer "artist_id"
    t.date "date"
    t.time "length"
    t.text "image"
    t.integer "tracks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists", force: :cascade do |t|
    t.text "name"
    t.date "start"
    t.date "end"
    t.text "members"
    t.text "country"
    t.text "image"
    t.text "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.text "name"
  end

  create_table "songs", force: :cascade do |t|
    t.text "title"
    t.integer "artist_id"
    t.integer "album_id"
    t.time "length"
    t.text "video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.string "password_digest"
    t.boolean "admin", default: false
  end

end
