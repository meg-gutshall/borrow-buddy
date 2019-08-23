require 'rails_helper'

RSpec.describe "borrowers/show", type: :view do
  before(:each) do
    @borrower = create(:borrower)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
  end
end
