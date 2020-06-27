Rails.application.routes.draw do
  root to: 'annonces#index'
  get 'about',to: 'apropos#show'
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
  resources :annonces

  resources :users, only: [:index,:show]
  
end

