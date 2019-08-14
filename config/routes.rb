Rails.application.routes.draw do
  # Home
  root to: 'application#home'

  devise_for :lenders, controllers: { omniauth_callbacks: 'lenders/omniauth_callbacks' }

  scope :lender do
    resources :borrows
    resources :recipients, only: [:index]
    resources :items, only: [:index]
  end

  resources :lenders, only: [:show]
  
  resources :items, except: [:index] do
    resources :recipients
    resources :borrows
  end

  resources :recipients, except: [:index] do
    resources :items
    resources :borrows
  end

end
