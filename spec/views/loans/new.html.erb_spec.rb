require 'rails_helper'

RSpec.describe "loans/new", type: :view do
  before(:each) do
    assign(:loan, Loan.new(
      :days_borrowed => 1,
      :reminders_sent => 1,
      :returned => false,
      :borrower => nil,
      :item => nil,
      :lender => nil
    ))
  end

  it "renders new loan form" do
    render

    assert_select "form[action=?][method=?]", loans_path, "post" do

      assert_select "input[name=?]", "loan[days_borrowed]"

      assert_select "input[name=?]", "loan[reminders_sent]"

      assert_select "input[name=?]", "loan[returned]"

      assert_select "input[name=?]", "loan[borrower_id]"

      assert_select "input[name=?]", "loan[item_id]"

      assert_select "input[name=?]", "loan[lender_id]"
    end
  end
end
