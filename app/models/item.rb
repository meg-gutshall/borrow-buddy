class Item < ApplicationRecord
  has_many :borrows
  has_many :recipients, through: :borrows

  validates :name, presence: true

  scope :lender_scope, -> (current) { joins(:borrows).where("lender_id = ?", current.id) }

end
