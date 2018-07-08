json.id @contact1.id
json.first_name @contact1.first_name
json.last_name @contact1.last_name
json.email @contact1.email
json.phone_number @contact1.phone_number
json.created_at @contact1.created_at
json.updated_at @contact1.updated_at

json.formatted do 
  json.updated_at @contact1.month_day_year_updated
  json.full_name @contact1.full_name
  json.japanese_number @contact1.japanese_number
end
