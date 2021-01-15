class Dashboard::DashboardController < ApplicationController
	before_action :authenticate_user!
  def index
  	User.all
  end
end
