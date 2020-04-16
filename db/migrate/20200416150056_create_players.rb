class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :win
      t.integer :draw
      t.integer :lose
      t.integer :gs
      t.integer :gt
      t.integer :dr
      t.integer :points

      t.timestamps
    end
  end
end
