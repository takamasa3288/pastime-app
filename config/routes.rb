Rails.application.routes.draw do
  get 'tweets/index'
  root to: "tweets#index"
  devise_for :users
  resources :users, only: [:edit, :update, :show]
  resources :tweets, only: [:new, :create, :show, :edit, :update] do
    resources :comments, only: :create
  end
end
