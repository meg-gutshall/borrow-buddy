require 'rails_helper'

RSpec.describe "borrowers/show", type: :view do
  before(:each) do
    @borrower = assign(:borrower, Borrower.create!(
      :name => "Name",
      :email => "Email",
      :phone => "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
  end
end
