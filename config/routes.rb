Rails.application.routes.draw do
  resources :stocks
  devise_for :users
  root to: 'home#index'
  get 'home/about', to: 'home#about'
  post "/" => 'home#index'
end
