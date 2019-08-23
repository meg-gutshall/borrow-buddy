require 'rails_helper'

RSpec.describe "borrowers/edit", type: :view do
  before(:each) do
    @borrower = assign(:borrower, Borrower.create!(
      :name => "MyString",
      :email => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders the edit borrower form" do
    render

    assert_select "form[action=?][method=?]", borrower_path(@borrower), "post" do

      assert_select "input[name=?]", "borrower[name]"

      assert_select "input[name=?]", "borrower[email]"

      assert_select "input[name=?]", "borrower[phone]"
    end
  end
end
