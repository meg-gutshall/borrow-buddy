class CreateBorrows < ActiveRecord::Migration[5.0]
  def change
    create_table :borrows do |t|
      t.belongs_to :lender
      t.belongs_to :recipient
      t.belongs_to :item
      t.integer :days_borrowed, default: 1
      t.integer :reminders_sent, default: 0
      t.boolean :returned, default: false

      t.timestamps
    end
  end
end
