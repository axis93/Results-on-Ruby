class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
    	t.string :name1
    	t.int :goal1
    	t.string :name2
    	t.int :goal2
    	t.string :date
    	t.references :player1, foreign_key: {to_table: :players}
    	t.references :player2, foreign_key: {to_table: :players}
    	
      t.timestamps
    end
  end
end
