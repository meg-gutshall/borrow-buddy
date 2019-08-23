require 'rails_helper'

RSpec.describe "recipients/index", type: :view do
  before(:each) do
    assign(:recipients, [
      Borrower.create!(
        :name => "Name",
        :email => "Email",
        :phone => "Phone"
      ),
      Borrower.create!(
        :name => "Name",
        :email => "Email",
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of recipients" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
