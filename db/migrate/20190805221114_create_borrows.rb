class CreateBorrows < ActiveRecord::Migration[6.0]
  def change
    create_table :borrows do |t|

      t.timestamps
    end
  end
end
