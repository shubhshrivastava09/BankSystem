class ProfilesController < ApplicationController
	before_action :authenticate_user!
	def show 
		# current User's profile
	end
end
