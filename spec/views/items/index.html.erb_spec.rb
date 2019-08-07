require 'rails_helper'

RSpec.describe "items/index", type: :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        :name => "Name",
        :category => "Category",
        :lender => nil
      ),
      Item.create!(
        :name => "Name",
        :category => "Category",
        :lender => nil
      )
    ])
  end

  it "renders a list of items" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
