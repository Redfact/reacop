Rails.application.routes.draw do
  root to: 'annonces#index'
  resources :annonces

  # devise_for :users
  # resources :users, only: [:index,:show]
  
end

