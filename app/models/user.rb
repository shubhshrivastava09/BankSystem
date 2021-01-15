class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:omniauthable

	def self.from_omniauth(access_token)
	  data = access_token.info
	  user = User.where(:email => data["email"]).first

	  	unless customer
		    password = Devise.friendly_token[0,20]
		    user = User.create(name: data["name"], email: data["email"],
		    password: password, password_confirmation: password)
	  	end
  		#user
	end
end
