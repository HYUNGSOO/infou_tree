Rails.application.routes.draw do
  devise_for :users, controllers: {
   registrations: 'users/registrations'
   
  }
  
  get 'home/index'
  get 'home/tables_simple'
  get 'home/data'
  get 'home/dashboard'
  
  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_root
    end
    
    unauthenticated :user do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  
end
