Rails.application.routes.draw do
    root "welcome#index"
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  resources :artists, only: [:new, :create, :show] do
    resources :songs, only: [:new, :create]
 end
 resources :songs, only: [:index, :show]

 resources :users

  namespace :admin do
    resources :categories, only: [:index]
  end
end
