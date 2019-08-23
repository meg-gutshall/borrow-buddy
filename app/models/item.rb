class Item < ApplicationRecord
  has_many :loans
  has_many :borrowers, through: :loans

  validates :name, presence: true

  # See `application_record.rb` for scope methods

  # Select category from dropdown
  def self.filter_by_category(current)
    joins(:loans).where("lender_id = ?", current.id).where("category = ?", params[:cat]).order(:name)
  end

  def name_with_category
    "#{name} (#{category.downcase})"
  end

end
