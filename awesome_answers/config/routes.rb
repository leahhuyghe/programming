#Routes just define rules for our application. So if a request matches the HTTP verb and the

Rails.application.routes.draw do

  resources :questions do
    # This will make the answers routes have a prefix /questions/:question_id
    resources :answers, only: [:create, :destroy]
  end

  resources :answers do
    # We're doing this to avoid nested resources, because that would result
    # in a very long URL and very cumbersome.
    resources :comments
  end

  #this will match a GET request to "/hello"
  #then it will invoke the Welcome Controller with hello action.
  #VERB "url" => "controller_name#action"
  get "/hello" => "welcome#hello", as: "hello_person"
  #the as: option defines the URL helper for this route. Sometimes Railse doesn't automatically assign the Path/URL helper if there is a parameter in the URL.
  get "/contact" => "contact#index"

  post "/contact" => "contact#create"

  get "/hello/:name/:city" => "welcome#hello"

  get "/about" => "about#about"

  get "/newsletter" => "newsletter#index"

  post "/newsletter" => "newsletter#submit"

  #this will match any url that has /hello/ANYTHING to WelcomeController index hello action. Rails will also add a key value to the params hash from the URL. For instance, if I go to : /hello/leah th eparams Hash will look like {"name" => "leah"}

  #this makes it that when we visit the home page of our application, it
  #will invoke the welcome_controller with index action (method) inside it.
  #Note: the class name is WelcomeController but I only had to put welcome in here as the controller part is implied.
  root "welcome#index"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
