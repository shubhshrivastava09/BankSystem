class ApplicationController < ActionController::Base
	devise_group :user, contains: [:manager,:customer,:employee]
	before_action :configure_permitted_parameters, if:  :devise_controller?

	def after_sign_in_path_for(resource)
  		profile_path(resource)# your path
  	end

  	protected

  	def configure_permitted_parameters
       devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password)}
       devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password)}
  	end

  end
