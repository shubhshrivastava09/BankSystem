class AddColumnsToTransaction < ActiveRecord::Migration[6.1]
  def change
    add_column :transactions,:customer_id,:integer
    add_reference :transactions,:accounts,foreign_key: true
    add_column :transactions,:dr_amt,:float
    add_column :transactions,:cr_amt,:float 
  end
end
