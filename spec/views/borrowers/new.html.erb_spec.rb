require 'rails_helper'

RSpec.describe "borrowers/new", type: :view do
  before(:each) do
    assign(:borrower, Borrower.new(
      :name => "MyString",
      :email => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders new borrower form" do
    render

    assert_select "form[action=?][method=?]", borrowers_path, "post" do

      assert_select "input[name=?]", "borrower[name]"

      assert_select "input[name=?]", "borrower[email]"

      assert_select "input[name=?]", "borrower[phone]"
    end
  end
end
