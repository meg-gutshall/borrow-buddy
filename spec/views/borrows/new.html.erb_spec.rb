require 'rails_helper'

RSpec.describe "borrows/new", type: :view do
  before(:each) do
    assign(:borrow, Borrow.new(
      :days_borrowed => 1,
      :reminders_sent => 1,
      :returned => false,
      :recipient => nil,
      :item => nil
    ))
  end

  it "renders new borrow form" do
    render

    assert_select "form[action=?][method=?]", borrows_path, "post" do

      assert_select "input[name=?]", "borrow[days_borrowed]"

      assert_select "input[name=?]", "borrow[reminders_sent]"

      assert_select "input[name=?]", "borrow[returned]"

      assert_select "input[name=?]", "borrow[recipient_id]"

      assert_select "input[name=?]", "borrow[item_id]"
    end
  end
end
