class AddColumnToAccount < ActiveRecord::Migration[6.1]
  def change
  	add_column :accounts,:customer_id,:integer
  end
end
