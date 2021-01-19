class ChangeReferenceInTransactionTable < ActiveRecord::Migration[6.1]
  def change
  	remove_reference :transactions,:accounts,foreign_key: true
  	add_reference :transactions,:account,foreign_key: true
  end
end
