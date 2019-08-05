Rails.application.routes.draw do
  # Home
  root to: 'application#home'

  devise_for :lenders
  resources :borrows
  resources :recipients
  resources :items

end
