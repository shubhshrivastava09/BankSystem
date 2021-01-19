class Dashboard::DashboardController < ApplicationController
	before_action :authenticate_user!
  def index
  	if customer_signed_in?
  	Customer.all
  	end
  end
end
