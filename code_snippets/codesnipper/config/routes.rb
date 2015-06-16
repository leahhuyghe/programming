Rails.application.routes.draw do
#  get 'welcome/index'

  root 'categories#index'

  resources :categories
  resources :snippets


end
