Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  #get 'home/index'
  get 'home/about'
  root 'home#index'
  resources :friends
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
