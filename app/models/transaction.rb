class Transaction < ApplicationRecord
 belongs_to :customer , foreign_key: 'customer_id'
 belongs_to :account
end
