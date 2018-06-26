class Api::ContactsController < ApplicationController

  def get_first_contact
    @first_contact = Contact.first
   
    render "contact_view.json.jbuilder"
  end

  def get_all_contacts
    # @all_contacts = Contact.all
    @all_contacts = []

    all_contacts = Contact.all
    all_contacts.each do |contact|
      @all_contacts << {first_name: contact.first_name, last_name: contact.last_name, email: contact.email, phone_number: contact.phone_number}
    end
    render "all_contacts_view.json.jbuilder"
  end
end

# Bonus: Create an api route to display the data of all your contacts. NOTE: You haven’t learned how to do this yet so you’ll need to look it up!
