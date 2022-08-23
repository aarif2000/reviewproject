Rails.application.routes.draw do
  root 'home#index'
  get '/confirmation_pending' => 'users#after_registration_path'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations'
  }
  post '/posts', to: 'users#create'
  post 'eventsposts', to: "events#create"

  resources :users
  resources :events
  resources :reviews

end
