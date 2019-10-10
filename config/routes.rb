Rails.application.routes.draw do
  match '/users',   to: 'users#index',   via: 'get'
  resources :roles
  resources :businesses
  devise_for :users, controllers: {registrations: "registrations"}
  match '/about', to: 'public#about', via: 'get'
  match '/services', to: 'public#services', via: 'get'
  match '/contact', to: 'public#contact', via: 'get'
  match '/blog', to: 'public#blog', via: 'get'

  root 'public#index'


end
