Rails.application.routes.draw do
  # Home
  root to: 'application#home'

  devise_for :lenders, controllers: { omniauth_callbacks: 'lenders/omniauth_callbacks' }

  resources :lenders, only: [:show] do
    get 'borrows/current_borrows', to: 'borrows#current_borrows', as: 'current_borrows'
    get 'borrows/returned_borrows', to: 'borrows#returned_borrows', as: 'returned_borrows'
    resources :borrows
    resources :recipients
    resources :items
  end
  
  resources :recipients, only: [:show] do
    resources :items, only: [:index]
    resources :borrows, only: [:index, :new, :create]
  end

  resources :items, only: [:show] do
    resources :recipients, only: [:index]
    resources :borrows, only: [:index, :new, :create]
  end

end
