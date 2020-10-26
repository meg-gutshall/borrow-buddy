Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'application#home'

  devise_for :lenders, controllers: { omniauth_callbacks: 'lenders/omniauth_callbacks' }

  resources :lenders do
    get 'loans/current_loans', to: 'loans#current_loans', as: 'current_loans'
    get 'loans/returned_loans', to: 'loans#returned_loans', as: 'returned_loans'
    get 'loans/:id/return', to: 'loans#return', as: 'return'
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
