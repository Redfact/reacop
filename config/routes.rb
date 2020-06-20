Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :an_interessants
      resources :annonces
      resources :favoris
      resources :messages

      root to: "users#index"
    end
  devise_for :users
  root to: 'annonces#index'
  resources :annonces

  # devise_for :users
  # resources :users, only: [:index,:show]
  
end

