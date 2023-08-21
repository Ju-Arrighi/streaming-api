Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :movies, only: [:index]
  resources :seasons, only: [:index]
  resources :purchases, only: [:index]
  resources :users, only: [:index]

  resources :libraries, only: [:index, :show] do
    resource :purchases, only: [:index, :show, :update]
  end

  resources :movie_season, only: [:index]
  # Defines the root path route ("/")
  # root "articles#index"
end
