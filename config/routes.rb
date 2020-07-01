Rails.application.routes.draw do

  root to: 'accueil#show'

  # static pages
  get 'accueil',to: 'accueil#show'
  get 'about',to: 'apropos#show'
  get 'locations',to: 'locations#show'
  get 'ventes' , to: 'ventes#show'

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

