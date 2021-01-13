class CreateAtms < ActiveRecord::Migration[6.1]
  def change
    create_table :atms do |t|
		t.integer :pin
		t.integer :cvv
		t.integer :customer_id,foregin_key:true
		t.integer :account_id,foregin_key:true    	
      	t.timestamps
    end
  end
end
