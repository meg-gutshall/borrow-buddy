require 'rails_helper'

RSpec.describe "borrows/show", type: :view do
  before(:each) do
    @borrow = assign(:borrow, Borrow.create!(
      :days_borrowed => 2,
      :reminders_sent => 3,
      :returned => false,
      :recipient => nil,
      :item => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
