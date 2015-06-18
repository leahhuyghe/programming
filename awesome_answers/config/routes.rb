# Routes just defined rules for our application. So if a request matches the
# HTTP verb and URL pattern then it will invoke the associated controller
# and action. Although it doesn't check that those exist before hand.

Rails.application.routes.draw do

  # this will match a GET request to "/hello"
  # thenit will invoke the WelcomeController with hello action
  # VERB "URL" => "CONTROLLER_NAME#ACTION"
  # get "/hello" => "welcome#hello"

  # this will match any url that has /hello/ANYTHING to WelcomeController
  # hello action. Rails will also add a key value to the params Hash from
  # the URL. For instance if I go to: /hello/tam the params Hash will look like:
  # {"name" => "tam"}
  # The as: option defines the PATH/URL helper for this route. Sometimes Rails
  # doesn't automatically assign the PATH/URL helper if there is a parameter
  # in the URL
  get "/hello/:name" => "welcome#hello", as: "hello_person"

  get "/about" => "about#index"

  # get is a method that takes it a single argument which is a hash. So the
  # explicit format for it is:
  get({"/contact" => "contact#index"})

  post "/contact" => "contact#create"

  get "/subscribe" => "subscribe#index"

  post "/subscribe" => "subscribe#create"

  # this makes it that when we visit the home page of our application. It will
  # invoke the welcome_controller with index action (method) inside it
  # notice the class name is WelcomeController but I only had to put welcome
  # in here as "controller" part is implied

  # this will match a GET request with URL "/questions/new"
  # to the questions controller with new action
  # The "as" option gives us a conventient method that we can use in the views
  # to generate this path or url. So in my view files I can do:
  # new_question_path or new_question_url
  # get "/questions/new" => "questions#new", as: :new_question

  # this will match a POST request with url "/questions"
  # to the questions controller with create action
  # post "/questions" => "questions#create", as: :questions


  # this will match any GET request with "/questions/something"
  # the "something" could be anything. In this case we expect it
  # to be an id of the question. We will get this id in our our controller
  # as part of the params object.
  # the as: :question option enables us to have a helper method like:
  # question_path or question_url
  # get "/questions/:id" => "questions#show", as: :question

  # get "/questions" => "questions#index"

  # get "/questions/:id/edit" => "questions#edit", as: :edit_question

  # patch "/questions/:id" => "questions#update"

  # delete "/questions/:id" => "questions#destroy"

  resources :questions do
    # this will make the answers routes have a prefix /questions/:question_id
    resources :answers, only: [:create, :destroy]

    resources :likes, only: [:create, :destroy]
  end

  resources :answers, only: [] do
    resources :comments
  end

  resources :categories, only: [:show]


  resources :users, except: [:edit, :update] do
    # this will give a URL /users/edit because we don't need the id of the user
    # in the URL because we have it in the session. In addition, it could pose
    # a security risk to have the user id part of the URL
    # as: :collection option makes it not include :id in the URL
    get :edit, on: :collection

    patch :update, on: :collection

  end

  resources :sessions, only: [:new, :create] do
    # this will make the destry action not requie an id so we can access
    # the destroy action with sessions_path or /sessions without passing an id
    delete :destroy, on: :collection
  end

  root "welcome#index"
  # root will match a GET request to "/"


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
