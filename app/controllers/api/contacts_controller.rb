class Api::ContactsController < ApplicationController 

  def index
    @contacts = Contact.all
    render 'index.json.jbuilder'
  end

  def show
    # get id from params
    contact_id = params[:id]
    # find contact with that id
    @contact1 = Contact.find_by(id: contact_id)
    # show that contact
    render 'show.json.jbuilder'
  end

  def create
    #
    @contact1 = Contact.new(
      first_name: params[:input_first_name], # input_first_name
      middle_name: params[:input_middle_name],
      last_name: params[:input_last_name], # input_last_name
      email: params[:input_email],# input_email
      phone_number: params[:input_phone_number]# input_phone_number
      )
    @contact1.save
    render 'show.json.jbuilder'
  end

  def update
    # get id from params
    contact_id = params[:id]
    # find contact with that id
    @contact1 = Contact.find_by(id: contact_id)
    # update
    # = input data or original
    @contact1.first_name = params[:input_first_name] || @contact1.first_name
    @contact1.middle_name = params[:input_middle_name] || @contact1.middle_name
    @contact1.last_name = params[:input_last_name] || @contact1.last_name
    @contact1.email = params[:input_email] || @contact1.email
    @contact1.phone_number = params[:input_phone_number] || @contact1.phone_number
    @contact1.save
    render 'show.json.jbuilder'
  end

  def destroy
    # get id from params
    contact_id = params[:id]
    # find contact with that id
    @contact1 = Contact.find_by(id: contact_id)
    # now delete it
    @contact1.destroy
    # render a success message
    render json: {message: "Thing deleted in destroy method"}
  end

end
