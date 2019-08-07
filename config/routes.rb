Rails.application.routes.draw do
  # Home
  root to: 'application#home'

  scope :lender do
    devise_for :lenders, path: ""
    resources :borrows
    resources :recipients, except: [:show]
    resources :items, except: [:show]
  end

  get "/lender/:id", to: "lenders#show", as: "lender"
  
  resources :items, only: [:show] do
    resources :recipients
    resources :borrows
  end

  resources :recipients, only: [:show] do
    resources :items
    resources :borrows
  end

end
