Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root 'home#index'
  get 'home/tables_simple'
  get 'home/data'
  get 'home/dashboard'
end
