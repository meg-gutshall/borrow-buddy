Rails.application.routes.draw do
  resources :borrows
  resources :borrowers
  resources :items
  # Home
  root to: 'application#home'
  
  devise_for :users
end
