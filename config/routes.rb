Rails.application.routes.draw do
  resources :genres
  resources :books

  root "books#new"

  get "genres" => "genres#index"

  get "index" => "books#index"

  get "generical" => "books#books_by_genre"

  get "by_title" => "books#books_by_title"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
