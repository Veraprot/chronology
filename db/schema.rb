ActiveRecord::Schema.define(version: 2018_11_08_212310) do

  create_table "cards", force: :cascade do |t|
    t.integer "date"
    t.text "event"
    t.integer "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer "number_of_players"
  end

  create_table "participants", force: :cascade do |t|
    t.integer "player_id"
    t.integer "game_id"
    t.integer "score"
  end

  create_table "players", force: :cascade do |t|
    t.string "username"
    t.integer "rating"
  end

end
