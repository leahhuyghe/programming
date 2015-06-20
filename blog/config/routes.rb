Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles

  root 'welcome#index'

  resources :articles do
    resources :comments
  end

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create] do
    delete :destroy, on: :collection
  end

end
