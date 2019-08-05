Rails.application.routes.draw do
  resources :borrowers
  resources :items
  # Home
  root to: 'application#home'
  
  devise_for :users
end
