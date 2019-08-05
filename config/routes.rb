Rails.application.routes.draw do
  # Home
  root to: 'application#home'
  
  devise_for :users
end
