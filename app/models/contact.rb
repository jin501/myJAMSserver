class Contact < ApplicationRecord
  belongs_to :company, optional: true
  has_many :actions
end
