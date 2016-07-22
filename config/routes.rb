Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'pages/index'

  get 'pages/about_us'

  get 'pages/contact_us'

  get 'pages/tos'

  get 'pages/faq'
  
  root 'pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
