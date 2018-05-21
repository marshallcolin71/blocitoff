Rails.application.routes.draw do
  devise_for :users

  root 'users#show'

  get 'users/show'
  get 'home/index'

  resources :items, only: [:create, :destroy]

end
