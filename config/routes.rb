Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  get "/contact_info_url" => "api/contacts#get_first_contact"
end
