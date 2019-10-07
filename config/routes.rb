Rails.application.routes.draw do
  get 'public/about'
  get 'public/service'
  get 'public/contact'

  root 'public#index'


end
