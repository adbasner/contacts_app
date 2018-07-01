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
#     first_name: Faker::WorldOfWarcraft.hero,
#     last_name: Faker::Name.last_name,
#     email: Faker::Internet.email,
#     phone_number: Faker::PhoneNumber.cell_phone
#   })

# p response.body

# update

# p 'enter a item id to change'
# item_id = gets.chomp

# response = Unirest.patch("http://localhost:3000/api/contacts/#{item_id}",
#   parameters: {
#     first_name: Faker::WorldOfWarcraft.hero,
#     last_name: Faker::Name.last_name,
#     email: Faker::Internet.email,
#     phone_number: Faker::PhoneNumber.cell_phone
#   })

# p response.body

# delete
# delete '/contacts/:id' => 'contacts#destroy'

p 'enter a item id to delete'
item_id = gets.chomp

response = Unirest.delete("http://localhost:3000/api/contacts/#{item_id}")
p 'Thing deleted here in runner'

p response.body