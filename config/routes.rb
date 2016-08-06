Rails.application.routes.draw do
  resources :comments
  resources :reserves
  resources :parkings
  resources :cars
  resources :profiles
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'pages/index'

  get 'pages/about_us'

  get 'pages/contact_us'

  get 'pages/tos'

  get 'pages/faq'
  
  get 'pages/find_parking'
  
  root 'pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
