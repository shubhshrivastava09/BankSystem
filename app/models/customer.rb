class Customer < User
	has_one :account
	has_many :transactions
end
