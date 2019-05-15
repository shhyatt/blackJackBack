class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.integer :handsPlayed
      t.integer :handsWon
      t.integer :handsLost
      t.integer :handsDrawn

      t.timestamps
    end
  end
end
