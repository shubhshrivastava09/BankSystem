Rails.application.routes.draw do
	resources :dashboard, only: [:index,:show]
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
    resources :pictures, only: [:new,:create]
  end

  resources :employees do
    resources :pictures, only: [:new,:create]
  end

  resources :users do
    resources :attendences, only: [:new,:create,:show]
  end
end
