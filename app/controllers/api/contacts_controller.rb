class Api::ContactsController < ApplicationController

  def get_first_contact
    @first_contact = Contact.first

    render "contact_view.json.jbuilder"
  end
end

# Bonus: Create an api route to display the data of all your contacts. NOTE: You haven’t learned how to do this yet so you’ll need to look it up!
