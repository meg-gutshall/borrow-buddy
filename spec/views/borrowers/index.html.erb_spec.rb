require 'rails_helper'

RSpec.describe "borrowers/index", type: :view do
  before(:each) do
    assign(:borrowers, [create_list(:borrower, 2)])
  end

  it "renders a list of borrowers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
