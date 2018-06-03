Rails.application.routes.draw do
  resources :destinations
  resources :destination_ratings
  get 'home/index'
  get 'home/dashboard'
    devise_for :users, controllers: {
        sessions: 'users/sessions'
    }
    
    root to: 'home#index'

end
