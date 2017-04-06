class Company < ApplicationRecord
  has_many :contacts
  has_many :actions
end
