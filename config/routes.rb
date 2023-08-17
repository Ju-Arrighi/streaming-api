Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :movies, only: [:index]
  resources :seasons, only: [:index]
  # Defines the root path route ("/")
  # root "articles#index"
end
