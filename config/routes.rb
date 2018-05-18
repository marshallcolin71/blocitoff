Rails.application.routes.draw do
  devise_for :users

  root 'home#index'

  get 'users/show'
  get 'home/index'

end
