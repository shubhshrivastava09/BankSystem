class Atm < ApplicationRecord
 belongs_to :customer
 belongs_to :account
 validates :atm_number,presence:true, length: { is: 16 }
 validates :account_id,presence: true, unique: true, length: { is: 11 }
 validates :pin,presence:true, length: { is: 4 }
 validates :cvv,presence:true, unique: true, length: { is: 3 }
end
