class AddIndexToUsers < ActiveRecord::Migration[6.1]
  def change
  	add_index :users, [:type, :user_id], unique: true
  end
end
