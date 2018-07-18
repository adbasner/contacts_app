class Api::ContactsController < ApplicationController 

  def index
    # @contacts = Contact.all
    # @user_contacts = []
    # @contacts.each do |contact|
    #   if contact.user_id == current_user.id
    #     @user_contacts << contact
    #   end
    # end
    if current_user
      @contacts = current_user.contacts
      render 'index.json.jbuilder'
    else
      @contacts = Contact.all
      render 'index.json.jbuilder'
      
      # render json: []
    end
    # @contacts = @user_contacts
    # render 'index.json.jbuilder'
  end

  def show
    # get id from params
    contact_id = params[:id]
    # find contact with that id
    @contact = Contact.find_by(id: contact_id)
    # show that contact
    render 'show.json.jbuilder'
  end

  def create
    #
    @contact = Contact.new(
      user_id: current_user.id,
      first_name: params[:input_first_name],
      middle_name: params[:input_middle_name],
      last_name: params[:input_last_name],
      bio: params[:input_bio],
      email: params[:input_email],
      phone_number: params[:input_phone_number]
      )
    @contact.save
    render 'show.json.jbuilder'
  end

  def update
    # get id from params
    contact_id = params[:id]
    # find contact with that id
    @contact = Contact.find_by(id: contact_id)
    # update
    # = input data or original
    @contact.first_name = params[:input_first_name] || @contact.first_name
    @contact.middle_name = params[:input_middle_name] || @contact.middle_name
    @contact.last_name = params[:input_last_name] || @contact.last_name
    @contact.email = params[:input_email] || @contact.email
    @contact.bio = params[:input_bio] || @contact.bio
    @contact.phone_number = params[:input_phone_number] || @contact.phone_number
    @contact.save
    render 'show.json.jbuilder'
  end

  def destroy
    # get id from params
    contact_id = params[:id]
    # find contact with that id
    @contact = Contact.find_by(id: contact_id)
    # now delete it
    @contact.destroy
    # render a success message
    render json: {message: "Thing deleted in destroy method"}
  end

end
