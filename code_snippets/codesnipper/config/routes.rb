Rails.application.routes.draw do
#  get 'welcome/index'

  root 'categories#show'
  resources :categories
  resources :snippets


end
