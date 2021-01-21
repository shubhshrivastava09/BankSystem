class Employee < User
	#belongs_to :user
	has_many :attendences, as: :employable
	#has_many :pictures, as: :imageable
end
