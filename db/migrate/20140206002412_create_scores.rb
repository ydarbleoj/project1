class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string :player_id
      t.string :tournament_id
      t.string :round_num
      t.string :gross_score

      t.timestamps
    end
  end
end
