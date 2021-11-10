Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  resources :contacts
  root "users#new"
  resources :pictures
  resources :favorites, only: [:index,:create, :destroy]
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
