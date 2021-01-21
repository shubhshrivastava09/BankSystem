class Customer < User
	has_one :account
	has_many :transactions
	has_many :pictures, as: :imageable
end
