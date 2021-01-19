Rails.application.routes.draw do
	namespace :dashboard do
		root to: "dashboard#index"
    #root to: "dashboard#index"
	end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #devise_for :users,:controllers => {:omniauth_callbacks => "users/omniauth_callbacks" }
  devise_for :customers#,:controllers => { :omniauth_callbacks => "customers/omniauth_callbacks" }
  devise_for :employees  #:controllers => { :omniauth_callbacks => "employees/omniauth_callbacks" }
  devise_for :managers   #:controllers => #{ :omniauth_callbacks => "managers/omniauth_callbacks" }
  resources  :profiles, only: [:show]
  resources :customers do
  	resources :accounts
  end
  resources :customers do
    resources :transactions, only: [:index,:show,:new,:create]
  end
end
