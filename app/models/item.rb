class Item < ApplicationRecord
  belongs_to :lender
  has_many :borrows
  has_many :recipients, through: :borrows
end
