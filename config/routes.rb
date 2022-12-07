Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :activities, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
    resources :likes, only: :create
  end

  resources :likes, only: :destroy

  resources :bookings, only: [:index, :show] do
    resources :reviews, only: :create
  end

  get '/ui', to: 'pages#uikit'
  get '/game', to: 'pages#game'
  get '/upcoming', to: 'pages#upcoming'

end
