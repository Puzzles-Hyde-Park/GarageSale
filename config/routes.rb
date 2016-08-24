Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  get 'errors/not_found'
  get 'errors/internal_server_error'
  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all

  root 'pages#index'
  get 'tips', to: 'pages#tips'
  get 'reachout', to: 'pages#reachout'
  get 'home', to: 'pages#home'
end
