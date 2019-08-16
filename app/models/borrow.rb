class Borrow < ApplicationRecord
  belongs_to :lender
  belongs_to :item
  belongs_to :recipient

  validates :days_borrowed, :reminders_sent, presence: true
  validates :returned, inclusion: { in: [true, false] }
  validates :days_borrowed, numericality: { only_integer: true, greater_than: 0 }
  validates :reminders_sent, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  scope :lender_scope, -> (current) { joins(:lender).where("lender_id = ?", current.id) }
  scope :hide_returned, -> { where(returned: false) }

  def recipient_attributes=(attributes)
    self.recipient = Recipient.where("lower(name) = ?", attributes[:name].downcase).find_or_create_by(name: attributes[:name]) if !attributes[:name].empty?
    self.recipient.update(attributes)  # TODO: Unless attributes are empty
  end

  def item_attributes=(attributes)
    self.item = Item.where("lower(name) = ? AND lower(category) = ?", attributes[:name].downcase, attributes[:category].downcase).find_or_create_by(name: attributes[:name]) if !attributes[:name].empty?
    self.item.update(attributes)  # TODO: Unless attributes are empty
  end

  def self.inc_days
    where(returned: false).map do |borrow|
      borrow.update(days_borrowed: borrow.days_borrowed += 1)
    end
  end

end
