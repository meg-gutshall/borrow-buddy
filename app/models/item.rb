class Item < ApplicationRecord
  has_many :borrows
  has_many :recipients, through: :borrows

  validates :name, presence: true

  scope :lender_scope, -> (current) { joins(:borrows).where("lender_id = ?", current.id).distinct }
  scope :abc_name, -> { order(:name) }
  scope :form_collection, -> (current) { joins(:borrows).where("lender_id = ?", current.id).distinct.order(:name) }

  # Select category from dropdown
  def self.filter_by_category(current)
    joins(:borrows).where("lender_id = ?", current.id).where("category = ?", params[:cat]).order(:name)
  end

  def name_with_category
    "#{name} (#{category})"
  end

end
