Rails.application.routes.draw do
  root 'pages#index'
  get 'tips', to: 'pages#tips'
  get 'reachout', to: 'pages#reachout'
end
