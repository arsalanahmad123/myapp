Rails.application.routes.draw do
  resources :carts
  get '/line_items', to: 'line_items#create'
  resources :line_items
  resources :cart
  root 'stores#index'
  devise_for :users, :controllers => {:registrations => 'registrations'}
  resources :products
  resources :categories
  resources :payment , only: [:new,:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
