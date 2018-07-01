class Api::ContactsController < ApplicationController

  def index
    @contacts = Contact.all
    render 'index.json.jbuilder'
  end

  def show
    # get id from params
    input_id = params[:id]
    # find contact with that id
    @contact1 = Contact.find_by(id: input_id)
    # show that contact
    render 'show.json.jbuilder'
  end

  def create
    #code
  end

  def update
    # get id from params
    input_id = params[:id]
    # find contact with that id
    @contact1 = Contact.find_by(id: input_id)
  end

  def destroy
    # get id from params
    input_id = params[:id]
    # find contact with that id
    @contact1 = Contact.find_by(id: input_id)
  end

end

# index
    # get '/contacts/' => 'contacts#index'
    # # show
    # get '/contacts/:id' => 'contacts#show'
    # # create
    # post '/contacts/' => 'contacts#create'
    # # update
    # patch '/contacts/:id' => 'contacts#update'
    # # destroy
    # delete '/contacts/:id' => 'contacts#destroy'

# Bonus: Create an api route to display the data of all your contacts. NOTE: You haven’t learned how to do this yet so you’ll need to look it up!
