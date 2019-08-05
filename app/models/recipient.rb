class Recipient < ApplicationRecord
  has_many :borrows
  has_many :items, through: :borrows
end
