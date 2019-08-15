Rails.application.routes.draw do
  # Home
  root to: 'application#home'

  devise_for :lenders, controllers: { omniauth_callbacks: 'lenders/omniauth_callbacks' }

  resources :lenders, only: [:show] do
    resources :borrows
    resources :recipients, except: [:show]
    resources :items, except: [:show]
  end
  
  resources :recipients, only: [:show] do
    resources :items
    resources :borrows
  end

  resources :items, only: [:show] do
    resources :recipients
    resources :borrows
  end

end
