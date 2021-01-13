class Account < ApplicationRecord
    belongs_to :customer #, class_name:"Customer"
end
