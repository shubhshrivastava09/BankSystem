class CreateAttendences < ActiveRecord::Migration[6.1]
  def change
    create_table :attendences do |t|
    	t.datetime  :att_date
    	t.references :employable, polymorphic: true
    	t.integer  :status
      t.timestamps
    end
  end
end
