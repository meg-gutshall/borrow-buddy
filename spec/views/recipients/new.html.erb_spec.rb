require 'rails_helper'

RSpec.describe "recipients/new", type: :view do
  before(:each) do
    assign(:recipient, Recipient.new(
      :name => "MyString",
      :email => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders new recipient form" do
    render

    assert_select "form[action=?][method=?]", recipients_path, "post" do

      assert_select "input[name=?]", "recipient[name]"

      assert_select "input[name=?]", "recipient[email]"

      assert_select "input[name=?]", "recipient[phone]"
    end
  end
end
