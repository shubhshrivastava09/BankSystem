class AddColumnsToAttendenceTable < ActiveRecord::Migration[6.1]
  def change
  	add_column :attendences,:employee_id,:integer
    add_column :attendences,:employee_name,:string
    add_column :attendences,:att_date,:datetime 
    add_column :attendences,:status,:integer 
  end
end
