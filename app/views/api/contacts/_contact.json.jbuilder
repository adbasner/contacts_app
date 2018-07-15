json.id contact.id
json.first_name contact.first_name
json.middle_name contact.middle_name
json.last_name contact.last_name
json.bio contact.bio
json.email contact.email
json.phone_number contact.phone_number
json.user_id contact.user_id
json.created_at contact.created_at
json.updated_at contact.updated_at

json.formatted do 
  json.updated_at contact.month_day_year_updated
  json.full_name contact.full_name
  json.japanese_number contact.japanese_number
end
