class Manager < User
	#belongs_to :user
	has_many :attendences, as: :employable
end
