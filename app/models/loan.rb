class Loan < ApplicationRecord
  belongs_to :lender
  belongs_to :item
  belongs_to :borrower

  validates_associated :item
  validates_associated :borrower
  validates :days_borrowed, :reminders_sent, presence: true
  validates :returned, inclusion: { in: [true, false] }
  validates :days_borrowed, numericality: { only_integer: true, greater_than: 0 }
  validates :reminders_sent, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  scope :loan_lender_scope, -> (current) { joins(:lender).where("lender_id = ?", current.id) }
  scope :hide_returned, -> { where(returned: false) }
  scope :show_returned, -> { where(returned: true) }

  def borrower_attributes=(borrower_attributes)
    if !borrower_attributes[:name].empty?
      self.borrower = 
        Borrower.where(
          "lower(name) = ? AND lower(phone) = ? AND lower(email) = ?", 
          borrower_attributes[:name].downcase, 
          borrower_attributes[:phone], 
          borrower_attributes[:email].downcase)
          .find_or_create_by(name: borrower_attributes[:name])
      self.borrower.update(
        name: borrower_attributes[:name],
        phone: borrower_attributes[:phone],
        email: borrower_attributes[:email].downcase
      )
    end
  end

  def item_attributes=(item_attributes)
    if !item_attributes[:name].empty?
      # filling out the item part of a new loan
      self.item = 
        Item.where(
          "lower(name) = ? AND lower(category) = ?", 
          item_attributes[:name].downcase, 
          item_attributes[:category].downcase)
          .find_or_create_by(name: item_attributes[:name])
          # Uses find_or_create_by method to either return pre-existing item or create a brand new one
      self.item.update(
        name: item_attributes[:name],
        category: item_attributes[:category].downcase
        # Then updates item, which if item is new, it adds the rest of the attributes
        # Check out docs for refactoring possibility: https://apidock.com/rails/v6.0.0/ActiveRecord/Relation/find_or_create_by
      )
    end
  end

  def self.inc_days
    where(returned: false).map do |loan|
      loan.update(days_borrowed: loan.days_borrowed += 1)
    end
  end

end
