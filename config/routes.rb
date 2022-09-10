Rails.application.routes.draw do
  root 'stores#index'
  devise_for :users, :controllers => {:registrations => 'registrations'}
  resources :products
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
