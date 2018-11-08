class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :date
      t.text :event
      t.integer :game_id

      t.timestamps
    end
  end
end
