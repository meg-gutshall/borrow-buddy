class Item < ApplicationRecord
  has_many :borrows
  has_many :recipients, through: :borrows

  validates :name, :category, presence: true

  scope :lender_scope, -> (current) { joins(:lender).where("lender_id = ?", current.id) }

end
