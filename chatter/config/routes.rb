Rails.application.routes.draw do

  root 'home#index'

  # GET /messages
  # this is what we want:
  # [{'body': 'Message 1'}, {'body': 'Message 2'}, {'body': 'Message 3'} ...]

  resources :messages

end
