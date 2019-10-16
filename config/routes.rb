Rails.application.routes.draw do
  # dashboard routes
  match '/users',   to: 'users#index',   via: 'get'
  match '/user/account',   to: 'users#account',   via: 'get'
  match '/user/profile',   to: 'users#profile',   via: 'get'
  # Resources routes
  resources :roles
  resources :businesses
  devise_for :users
  resources :products
  resources :orders
  resources :shipments
  # Public singular resourses routes
  match '/about', to: 'public#about', via: 'get'
  match '/services', to: 'public#services', via: 'get'
  match '/contact', to: 'public#contact', via: 'get'
  match '/blog', to: 'public#blog', via: 'get'

  root 'public#index'
  
  match '*a', :to => 'application#page_not_found', via: :get

end
