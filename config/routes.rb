Rails.application.routes.draw do
  devise_for :users
  root to: 'annonces#index'
  resources :annonces

  # devise_for :users
  # resources :users, only: [:index,:show]
  
end

