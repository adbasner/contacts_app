require 'unirest'
require 'faker'

# puts JSON.pretty_generate(reponse.body)
# puts JSON.pretty_generate(reponse.body)
# puts JSON.pretty_generate(reponse.body['all_contacts'][0])
# puts JSON.pretty_generate(reponse.body['all_contacts'][2])
# puts reponse.body['all_contacts'][0]['first_name']
# puts reponse.body['all_contacts'][2]['phone_number']

# create

# response = Unirest.post("http://localhost:3000/api/contacts/",
#   parameters: {
#     input_first_name: Faker::WorldOfWarcraft.hero,
#     input_last_name: Faker::Name.last_name,
#     input_email: Faker::Internet.email,
#     input_phone_number: Faker::PhoneNumber.cell_phone
#   })

# p response.body

# update

# p 'enter a item id to change'
# item_id = gets.chomp
# p 'Enter a new first name or leave blank'
# first_name = gets.chomp
# # p first_name == ""
# if first_name == ""
#   first_name = !first_name
# end

# response = Unirest.patch("http://localhost:3000/api/contacts/#{item_id}",
#   parameters: {
#     input_first_name: first_name,
#     input_last_name: Faker::Name.last_name,
#     input_email: Faker::Internet.email,
#     input_phone_number: Faker::PhoneNumber.cell_phone
#   })

# p response.body

# delete

# p 'enter a item id to delete'
# item_id = gets.chomp

# response = Unirest.delete("http://localhost:3000/api/contacts/#{item_id}")
# p 'Thing deleted here in runner'

# p response.body
# contact_ids = []
# contacts = Unirest.get("http://localhost:3000/api/contacts")
# response = contacts.body
# response.each do |contact|
#   contact_ids << contact['id']
# end
# p contact_ids