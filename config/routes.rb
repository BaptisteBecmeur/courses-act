Rails.application.routes.draw do
  
  get 'courses/index'

  get 'courses/show'

  get 'about', to: 'pages#about'
  # get 'show/index'

  devise_for :users
  root to: 'pages#home'

  resources :items, only: [:show], path: "" # => friendly-id
  
end
