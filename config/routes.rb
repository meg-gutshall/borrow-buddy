Rails.application.routes.draw do
  # Home
  root to: 'application#home'

  devise_for :lenders, controllers: { omniauth_callbacks: 'lenders/omniauth_callbacks' }

  resources :lenders, only: [:show] do
    get 'loans/current_loans', to: 'loans#current_loans', as: 'current_loans'
    get 'loans/returned_loans', to: 'loans#returned_loans', as: 'returned_loans'
    resources :loans
    resources :borrowers
    resources :items
  end
  
  resources :borrowers, only: [:show] do
    resources :loans, only: [:new, :create]
  end

  resources :items, only: [:show] do
    resources :loans, only: [:new, :create]
  end

end
