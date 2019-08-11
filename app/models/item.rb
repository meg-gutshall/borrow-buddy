class Item < ApplicationRecord
  belongs_to :lender
  has_many :borrows
  has_many :recipients, through: :borrows

  validates_associated :lender
  validates_associated :borrows
  validates :name, :category, presence: true

  scope :lender_scope, -> (current) { joins(:lender).where("lender_id = ?", current.id) }

end
