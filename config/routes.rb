Rails.application.routes.draw do

  get 'users/index'

  get 'users/show'

  # get 'hiraganas/index'

  # get 'hiraganas/show'

  # get 'hiraganas/new'

  # get 'hiraganas/create'

  # get 'hiraganas/edit'

  # get 'hiraganas/update'

  # get 'hiraganas/destroy'

  resources :hiraganas, only: [:index, :show, :new, :create, :edit, :updat]

  # get 'chapters/show'

get 'about', to: 'pages#about'
  get 'start', to: 'pages#start'
  get 'contact', to: 'pages#contact'
  get 'legal', to: 'pages#legal'

  root to: 'pages#home'
  devise_for :users

  resources :courses, only: [:show] do
    resources :chapters, only: [:show] do
      resources :items, only: [:show]
    end
  end


  get 'courses', to: 'courses#index'

end
