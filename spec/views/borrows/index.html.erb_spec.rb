require 'rails_helper'

RSpec.describe "borrows/index", type: :view do
  before(:each) do
    assign(:borrows, [
      Borrow.create!(),
      Borrow.create!()
    ])
  end

  it "renders a list of borrows" do
    render
  end
end
