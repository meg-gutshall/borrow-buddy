require 'rails_helper'

RSpec.describe "borrows/edit", type: :view do
  before(:each) do
    @borrow = assign(:borrow, Borrow.create!())
  end

  it "renders the edit borrow form" do
    render

    assert_select "form[action=?][method=?]", borrow_path(@borrow), "post" do
    end
  end
end
