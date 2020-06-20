Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  namespace :admin do
      resources :users
      resources :an_interessants
      resources :annonces
      resources :favoris
      resources :messages
      resources :photos
      resources :avatars
      root to: "users#index"
    end
  devise_for :users
  root to: 'annonces#index'
  resources :annonces

  resources :users, only: [:index,:show]
  
end

