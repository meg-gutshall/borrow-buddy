Rails.application.routes.draw do
  resources :items
  # Home
  root to: 'application#home'
  
  devise_for :users
end
