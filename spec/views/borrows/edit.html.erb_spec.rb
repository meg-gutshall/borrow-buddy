require 'rails_helper'

RSpec.describe "borrows/edit", type: :view do
  before(:each) do
    @borrow = assign(:borrow, Borrow.create!(
      :days_borrowed => 1,
      :reminders_sent => 1,
      :returned => false,
      :recipient => nil,
      :item => nil
    ))
  end

  it "renders the edit borrow form" do
    render

    assert_select "form[action=?][method=?]", borrow_path(@borrow), "post" do

      assert_select "input[name=?]", "borrow[days_borrowed]"

      assert_select "input[name=?]", "borrow[reminders_sent]"

      assert_select "input[name=?]", "borrow[returned]"

      assert_select "input[name=?]", "borrow[recipient_id]"

      assert_select "input[name=?]", "borrow[item_id]"
    end
  end
end
