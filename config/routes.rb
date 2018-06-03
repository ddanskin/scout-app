Rails.application.routes.draw do
  resources :destinations
  resources :destination_ratings
  get 'home/index'
  get 'home/dashboard'
    devise_for :users
    
    root to: 'home#index'

end
