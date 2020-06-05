class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :date
      t.string :string

      t.timestamps
    end
  end
end
