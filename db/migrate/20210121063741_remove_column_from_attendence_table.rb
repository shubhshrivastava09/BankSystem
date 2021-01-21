class RemoveColumnFromAttendenceTable < ActiveRecord::Migration[6.1]
  def change
  	  drop_table :attendences
  end
end
