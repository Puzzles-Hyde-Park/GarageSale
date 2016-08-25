Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: "users/registrations"
  }
  resources :users, only: [:show]
  get 'errors/not_found'
  get 'errors/internal_server_error'
  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all

  authenticated :user do
    root :to => "pages#home"
  end
  unauthenticated :user do
    root 'pages#index', as: :unauthenticated_root
  end

  get 'tips', to: 'pages#tips'
  get 'reachout', to: 'pages#reachout'
  get 'home', to: 'pages#home'
end
