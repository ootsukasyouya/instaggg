Rails.application.routes.draw do
  resources :pictures
  get 'sessions/new'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
