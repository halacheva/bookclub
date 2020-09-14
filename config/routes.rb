Rails.application.routes.draw do
  devise_for :users

  get 'home/index'
  root 'home#index'

  resources :authors, only: %i[index show edit update]
  resources :reviews, only: %i[new create]
end
