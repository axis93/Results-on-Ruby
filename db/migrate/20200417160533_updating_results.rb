class UpdatingResults < ActiveRecord::Migration[6.0]
  def change
  	change_column :results, :date, :string
  end
end
