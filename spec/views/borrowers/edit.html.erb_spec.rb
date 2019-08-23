require 'rails_helper'

RSpec.describe "recipients/edit", type: :view do
  before(:each) do
    @recipient = assign(:recipient, Borrower.create!(
      :name => "MyString",
      :email => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders the edit recipient form" do
    render

    assert_select "form[action=?][method=?]", recipient_path(@recipient), "post" do

      assert_select "input[name=?]", "recipient[name]"

      assert_select "input[name=?]", "recipient[email]"

      assert_select "input[name=?]", "recipient[phone]"
    end
  end
end
