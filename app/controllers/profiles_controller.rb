class ProfilesController < ApplicationController
	before_action :authenticate_user!
	def show
		#@picture = current_user.pictures.new
		# current User's profile
	end
end
