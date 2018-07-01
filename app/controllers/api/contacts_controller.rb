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
    #
    @contact1 = Contact.new(
      first_name: params[:first_name], # input_first_name
      last_name: params[:last_name], # input_last_name
      email: params[:email],# input_email
      phone_number: params[:phone_number]# input_phone_number
      )
    @contact1.save
    render 'show.json.jbuilder'
  end

  def update
    # get id from params
    input_id = params[:id]
    # find contact with that id
    @contact1 = Contact.find_by(id: input_id)
    # update
    # = input data or original
    @contact1.first_name = params[:first_name] || @contact1.first_name
    @contact1.last_name = params[:last_name] || @contact1.last_name
    @contact1.email = params[:email] || @contact1.email
    @contact1.phone_number = params[:phone_number] || @contact1.phone_number
    @contact1.save
    render 'show.json.jbuilder'
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
