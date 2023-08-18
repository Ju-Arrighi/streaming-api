Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :movies, only: [:index]
  resources :seasons, only: [:index]
  resources :users, only: [:index]
  resources :libraries, only: [:index, :show]
  resources :purchases, only: [:index, :create]
  # Defines the root path route ("/")
  # root "articles#index"
end
