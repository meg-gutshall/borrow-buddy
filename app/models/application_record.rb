class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  # Use for Item and Borrower models
  scope :lender_scope, -> (current) { joins(:loans).where("lender_id = ?", current.id).distinct }
  scope :abc_name, -> { order(:name) }
  scope :abc_lender_scope, -> (current) { joins(:loans).where("lender_id = ?", current.id).distinct.order(:name) }

end
