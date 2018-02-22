Rails.application.routes.draw do
  resources :genres
  resources :books

  root "books#new"

  get "genres" => "genres#index"

  get "index" => "books#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
