Rails.application.routes.draw do
  
  get 'about', to: 'pages#about'
  # get 'show/index'

  devise_for :users
  root to: 'pages#home'

  resources :items, only: [:show], path: "" # => friendly-id
  
end
