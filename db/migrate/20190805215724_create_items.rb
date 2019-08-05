class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.belongs_to :lender
      t.string :name
      t.string :category

      t.timestamps
    end
  end
end
