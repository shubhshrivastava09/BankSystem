Rails.application.routes.draw do
  namespace :dashboard do
   #root to: "dashboard#index"
    get 'dashboard/index'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :customers
  devise_for :employees
  devise_for :managers
end
