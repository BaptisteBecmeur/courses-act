Rails.application.routes.draw do




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

  resources :hiragana

end
