ActiveRecord::Schema.define(version: 2018_11_06_182139) do

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
