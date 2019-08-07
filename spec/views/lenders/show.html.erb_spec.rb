require 'rails_helper'

RSpec.describe "lenders/show", type: :view do
  before(:each) do
    @lender = assign(:lender, Lender.create!(
      :email => "Email",
      :password => "Password"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Password/)
  end
end
