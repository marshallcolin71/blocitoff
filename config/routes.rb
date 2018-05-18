Rails.application.routes.draw do
  devise_for :models
  devise_for :users
  
  root 'home#index'

  get 'todo/show'
  get 'home/index'



end
