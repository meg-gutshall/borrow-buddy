require "rails_helper"

RSpec.describe LendersController, type: :routing do
  describe "routing" do
    it "routes to #show" do
      expect(:get => "/lenders/1").to route_to("lenders#show", :id => "1")
    end
  end
end
