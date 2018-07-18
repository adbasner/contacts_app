class Contact < ApplicationRecord
  belongs_to :user
  has_many :contact_groups
  has_many :groups, through: :contact_groups 

  def month_day_year_updated
    updated_at.strftime('%B %d, %Y')
  end

  def full_name
    full_name = "#{first_name} #{middle_name} #{last_name}"
  end

  def japanese_number
    "+81 #{phone_number}"
  end
end
