Rails.application.routes.draw do
  root 'home#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations'
  }

  post '/posts', to: 'users#create'
  resources :users
  get '/confirmation_pending' => 'users#after_registration_path'
end
