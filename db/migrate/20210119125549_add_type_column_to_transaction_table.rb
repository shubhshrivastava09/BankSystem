class AddTypeColumnToTransactionTable < ActiveRecord::Migration[6.1]
  def change
  	add_column :transactions,:transaction_type,:string 
  end
end
