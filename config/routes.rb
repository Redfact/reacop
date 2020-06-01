Rails.application.routes.draw do
  root to: 'annonces#index'
  devise_for :users

  resources :annonces

end
