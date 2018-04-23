Rails.application.routes.draw do
  root controller: :locations, action: :index
  post '/' => 'locations#index'
  resources :search_queries
  resources :admin, only: %i[index]
  resources :locations, only: %i[index show]
end
