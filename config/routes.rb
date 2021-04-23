Rails.application.routes.draw do
  get 'tweets/index'
  root to: "tweets#index"
  devise_for :users
  resources :users, only: [:edit, :update]
  resources :tweets, only: [:new, :create, :show]
end
