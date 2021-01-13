class ChangeIdOfAtmTable < ActiveRecord::Migration[6.1]
  def change
  	rename_column :atms , :id ,  :atm_number
  end
end
