require 'unirest'

reponse = Unirest.get("http://localhost:3000/all_contacts_url")

puts JSON.pretty_generate(reponse.body)
puts JSON.pretty_generate(reponse.body['all_contacts'])
puts JSON.pretty_generate(reponse.body['all_contacts'][0])
puts JSON.pretty_generate(reponse.body['all_contacts'][2])
puts reponse.body['all_contacts'][0]['first_name']
puts reponse.body['all_contacts'][2]['phone_number']