class CreateParticipant < ActiveRecord::Migration[5.2]
  def change
    create_table :participants do |t|
      t.integer :player_id
      t.integer :game_id
      t.integer :score
    end
  end
end
