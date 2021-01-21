class Attendence < ApplicationRecord
	  enum status: { absent: 2, present: 1 }
  	belongs_to :employable, polymorphic: true
end
