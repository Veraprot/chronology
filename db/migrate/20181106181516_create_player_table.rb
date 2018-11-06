class CreatePlayerTable < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :username 
      t.integer :rating 
    end
  end
end
