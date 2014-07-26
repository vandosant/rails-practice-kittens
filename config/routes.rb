Rails.application.routes.draw do
  root "kittens#index"
  resources :kittens, only: [:show] do
    resource :categorizations, only: [:new, :create]
  end
  get "signin" => "sessions#new", as: :signin
  post "signin" => "sessions#create"
  get "signout" => "sessions#destroy", as: :signout
  get "/categories" => "categories#index", as: :categories
end
