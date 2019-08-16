Rails.application.routes.draw do
  # Home
  root to: 'application#home'

  devise_for :lenders, controllers: { omniauth_callbacks: 'lenders/omniauth_callbacks' }

  resources :lenders, only: [:show] do
    resources :borrows
    resources :recipients
    resources :items
  end
  
  resources :recipients, only: [:show] do
    resources :items, only: [:index]
    resources :borrows, only: [:index]
  end

  resources :items, only: [:show] do
    resources :recipients, only: [:index]
    resources :borrows, only: [:index]
  end

end
