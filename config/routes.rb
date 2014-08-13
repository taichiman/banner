Rails.application.routes.draw do
  root "show#v1"

  get 'show/v1', to: 'show#v1', as: 'v1'
  get 'show/v2', to: 'show#v2', as: 'v2'
  get 'show/v3', to: 'show#v3', as: 'v3'

  resources :banners, only: [ :index, :destroy]
end
