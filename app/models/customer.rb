class Customer < User
	#belongs_to :user
	has_one :account	
end
