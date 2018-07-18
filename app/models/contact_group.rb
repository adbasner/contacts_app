class ContactGroup < ApplicationRecord
  belongs_to :group
  belongs_to :contacts
end
