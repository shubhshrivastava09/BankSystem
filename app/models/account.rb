class Account < ApplicationRecord
    belongs_to :customer #, class_name:"Customer"
    validates :customer_id, presence: true
    has_many :transactions
  	# validates :id,presence: true, length: { is: 11 }  	
end
