require 'rails_helper'

RSpec.describe "borrows/index", type: :view do
  before(:each) do
    assign(:borrows, [
      Borrow.create!(
        :days_borrowed => 2,
        :reminders_sent => 3,
        :returned => false,
        :recipient => nil,
        :item => nil
      ),
      Borrow.create!(
        :days_borrowed => 2,
        :reminders_sent => 3,
        :returned => false,
        :recipient => nil,
        :item => nil
      )
    ])
  end

  it "renders a list of borrows" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
