Rails.application.routes.draw do
  root to: 'home#index'
  get 'home/about', to: 'home#about'
  post "/" => 'home#index'
end
