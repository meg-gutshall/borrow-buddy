class AddOmniauthToLenders < ActiveRecord::Migration[5.2]
  def change
    add_column :lenders, :provider, :string
    add_column :lenders, :uid, :string
  end
end
