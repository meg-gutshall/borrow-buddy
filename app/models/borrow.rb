class Borrow < ApplicationRecord
  belongs_to :item
  belongs_to :recipient
end
