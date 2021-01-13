class AddColumnsToAccountTable < ActiveRecord::Migration[6.1]
  def change
  	add_column :accounts,  :acc_balance, :float
  end
end
