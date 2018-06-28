Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get "/contact_info_url" => "contacts#get_first_contact"
    get "/all_contacts_url" => "contacts#get_all_contacts"
  end
end
