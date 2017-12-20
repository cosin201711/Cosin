Rails.application.routes.draw do

  devise_for :adminsters
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :items
  resources :orders, only:[:create,:show, :index]
  resources :order_items
  resources :carts, only: [:show,:create,:update,:destroy]
  resources :users, only: [:show, :edit, :update]
  resources :adminsters, only: [:top, :manage_users, :edit_user_details]

  root "top#index"
end
