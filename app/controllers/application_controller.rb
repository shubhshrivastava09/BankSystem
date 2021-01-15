class ApplicationController < ActionController::Base
	devise_group :user, contains: [:manager,:customer,:employee]
end
