Rails.application.routes.draw do 
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    # index
    get '/contacts/' => 'contacts#index'
    # show
    get '/contacts/:id' => 'contacts#show'
    # create
    post '/contacts/' => 'contacts#create'
    # update
    patch '/contacts/:id' => 'contacts#update'
    # destroy
    delete '/contacts/:id' => 'contacts#destroy'


    # user stuff
    post '/users' => 'users#create'
    post "/sessions" => "sessions#create"

  end
end
