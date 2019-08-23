require 'rails_helper'

RSpec.describe "loans/edit", type: :view do
  before(:each) do
    @loan = assign(:loan, Loan.create!(
      :days_borrowed => 1,
      :reminders_sent => 1,
      :returned => false,
      :borrower => nil,
      :item => nil,
      :lender => nil
    ))
  end

  it "renders the edit loan form" do
    render

    assert_select "form[action=?][method=?]", loan_path(@loan), "post" do

      assert_select "input[name=?]", "loan[days_borrowed]"

      assert_select "input[name=?]", "loan[reminders_sent]"

      assert_select "input[name=?]", "loan[returned]"

      assert_select "input[name=?]", "loan[borrower_id]"

      assert_select "input[name=?]", "loan[item_id]"

      assert_select "input[name=?]", "loan[lender_id]"
    end
  end
end
