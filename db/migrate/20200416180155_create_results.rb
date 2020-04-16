class CreateResults < ActiveRecord::Migration[6.0]
  def change
    create_table :results do |t|
      t.string :name1
      t.integer :goal1
      t.string :name2
      t.integer :goal2
      t.datetime :date
      t.references :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
