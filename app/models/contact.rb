class Contact < ApplicationRecord
  def month_day_year_updated
    updated_at.strftime('%B %d, %Y')
  end

  def full_name
    full_name = "#{first_name} #{last_name}"
  end

  def japanese_number
    "+81 #{phone_number}"
  end
end
