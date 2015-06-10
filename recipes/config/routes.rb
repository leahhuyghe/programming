Rails.application.routes.draw do


  resources :recipes, only: [:index, :new, :create, :show] do
    resources :ingredients, only: [:create, :destroy] 
  end

  root "recipes#index"




  # root 'welcome#index'

end
