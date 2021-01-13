class Customer < User
	has_one :account
	has_one :atm	
end
