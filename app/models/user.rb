class User < ApplicationRecord
	# scope: customers, => {(type:'Customer')}
	# scope: employees, => {(type:'Employee')}
	# scope: managers, => {(type:'Manager')}\
	validates :type,presence:true
	validates :name,presence:true
	validates :user_email,presence:true,uniqueness:true
	validates :user_password , presence:true , length: { in: 6..20 }
	validates :city,:address,:pincode, presence:true	
end
