require 'unirest'


# puts JSON.pretty_generate(reponse.body)
# puts JSON.pretty_generate(reponse.body)
# puts JSON.pretty_generate(reponse.body['all_contacts'][0])
# puts JSON.pretty_generate(reponse.body['all_contacts'][2])
# puts reponse.body['all_contacts'][0]['first_name']
# puts reponse.body['all_contacts'][2]['phone_number']


response = Unirest.post("http://localhost:3000/api/contacts/",
  parameters: {
    first_name: 'bobbobobobob',
    last_name: 'blksdjfl',
    email: 'sdf.sf',
    phone_number: '3434343434'
  })

p response.body