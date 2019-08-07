Rails.application.routes.draw do
  # Home
  root to: 'application#home'

  scope :lender do
    devise_for :lenders, path: ""
    resources :borrows
    resources :recipients, only: [:index]
    resources :items, only: [:index]
  end
  
  resources :items, except: [:index] do
    resources :recipients
    resources :borrows
  end

  resources :recipients, except: [:index] do
    resources :items
    resources :borrows
  end

end
