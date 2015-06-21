Rails.application.routes.draw do
  get 'welcome/index'

  

  root 'welcome#index'

  resources :articles do
    resources :comments
    resources :votes, only: [:create, :destroy, :update]
  end

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create] do
    delete :destroy, on: :collection
  end





end
