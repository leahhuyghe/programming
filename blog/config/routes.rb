Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'

  resources :articles do
    resources :comments
    resources :votes, only: [:create, :destroy, :update]
    resources :likes, only: [:create, :destroy]
  end

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create] do
    delete :destroy, on: :collection
  end

  resources :favourites, only: [:create, :destroy]

end
