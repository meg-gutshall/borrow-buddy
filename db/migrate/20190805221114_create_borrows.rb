class CreateBorrows < ActiveRecord::Migration[6.0]
  def change
    create_table :borrows do |t|
      t.belongs_to :recipient
      t.belongs_to :item
      t.integer :days_borrowed
      t.integer :reminders_sent
      t.boolean :returned

      t.timestamps
    end
  end
end
