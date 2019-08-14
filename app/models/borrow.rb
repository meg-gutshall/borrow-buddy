class Borrow < ApplicationRecord
  belongs_to :lender
  belongs_to :item
  belongs_to :recipient

  validates_associated :lender
  validates :days_borrowed, :reminders_sent, presence: true
  validates :returned, inclusion: { in: [true, false] }
  validates :days_borrowed, numericality: { only_integer: true, greater_than: 0 }
  validates :reminders_sent, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  scope :lender_scope, -> (current) { joins(:lender).where("lender_id = ?", current.id) }
  scope :hide_returned, -> { where(returned: false) }

  def recipient_attributes=(recipient)
    self.recipient = Recipient.find_or_create_by(name: recipient[:name])
    self.recipient.update(recipient)
  end

  def item_attributes=(item)
    self.item = Item.find_or_create_by(name: item[:name])
    self.item.update(item)
  end

  def item
    Item.find_by(id: self.item_id)
  end

end
