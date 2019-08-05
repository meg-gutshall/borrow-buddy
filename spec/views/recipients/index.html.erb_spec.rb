require 'rails_helper'

RSpec.describe "recipients/index", type: :view do
  before(:each) do
    assign(:recipients, [
      Recipient.create!(),
      Recipient.create!()
    ])
  end

  it "renders a list of recipients" do
    render
  end
end
