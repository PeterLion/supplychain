Rails.application.routes.draw do
  resources :businesses
  devise_for :users, controllers: {registrations: "registrations"}
  get 'public/about'
  get 'public/service'
  get 'public/contact'

  root 'public#index'


end
