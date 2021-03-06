Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: "users/registrations",
    :omniauth_callbacks => "users/omniauth_callbacks"
  }
  match 'users/auth/facebook/callback', to: 'users/sessions#create', :via => :all
  match 'users/auth/failure', to: redirect('/'), :via => :all
  resources :users, only: [:show]
  resources :items
  get 'errors/not_found'
  get 'errors/internal_server_error'
  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all

  authenticated :user do
    root :to => 'items#index'
  end
  unauthenticated :user do
    root 'pages#index', as: :unauthenticated_root
  end
  get 'account', to: 'pages#account'
  get 'home', to: 'items#index'
  get 'tips', to: 'pages#tips'
  get 'reachout', to: 'pages#reachout'
  get 'privacy', to: 'pages#privacy'
  get 'tos', to: 'pages#tos'
end
