class Action < ApplicationRecord
  belongs_to :contact, optional: true
  belongs_to :company
  belongs_to :detail

end
