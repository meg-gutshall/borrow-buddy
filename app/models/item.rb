class Item < ApplicationRecord
  has_many :loans, dependent: :destroy
  has_many :borrowers, through: :loans

  validates :name, presence: true

  scope :lender_scope, -> (current) { joins(:loans).where("lender_id = ?", current.id).distinct }
  scope :abc_name, -> { order(:name) }

  # Select category from dropdown
  def self.filter_by_category(current)
    joins(:loans).where("lender_id = ?", current.id).where("category = ?", params[:cat]).order(:name)
  end

  def name_with_category
    "#{name} (#{category.downcase})"
  end

end
