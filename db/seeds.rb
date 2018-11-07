# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Game.create(number_of_players: 5)
Game.create(number_of_players: 2)

Player.create(username: "vera", rating: 5)
Player.create(username: "vp", rating: 4)
Player.create(username: "pro", rating: 3)
Player.create(username: "codelab", rating: 2)
Player.create(username: "redbull_addict", rating: 1)


Participant.create(player_id: 1, game_id: 1, score: 10)
Participant.create(player_id: 2, game_id: 1, score: 7)
Participant.create(player_id: 3, game_id: 1, score: 4)
Participant.create(player_id: 4, game_id: 1, score: 3)
Participant.create(player_id: 5, game_id: 1, score: 1)
Participant.create(player_id: 1, game_id: 2, score: 7)
Participant.create(player_id: 2, game_id: 2, score: 10)
p 'done for good'
