require "rails_helper"

RSpec.describe ItemsController, type: :routing do
  describe "routing" do
    it "routes to item#index as a nested resource of lender" do
      expect(get: lender_items_path(2)).to route_to("items#index", lender_id: "2")
    end

    it "routes to item#new as a nested resource of lender" do
      expect(get: new_lender_item_path(2)).to route_to("items#new", lender_id: "2")
    end

    it "routes to item#show as a nested resource of lender" do
      expect(get: lender_item_path(2, 1)).to route_to("items#show", lender_id: "2", id: "1")
    end

    it "routes to item#edit as a nested resource of lender" do
      expect(get: edit_lender_item_path(2, 1)).to route_to("items#edit", lender_id: "2", id: "1")
    end

    it "routes to item#create as a nested resource of lender" do
      expect(post: lender_items_path(2)).to route_to("items#create", lender_id: "2")
    end

    it "routes to item#update via PUT as a nested resource of lender" do
      expect(put: lender_item_path(2, 1)).to route_to("items#update", lender_id: "2", id: "1")
    end

    it "routes to item#update via PATCH as a nested resource of lender" do
      expect(patch: lender_item_path(2, 1)).to route_to("items#update", lender_id: "2", id: "1")
    end

    it "routes to item#destroy as a nested resource of lender" do
      expect(delete: lender_item_path(2, 1)).to route_to("items#destroy", lender_id: "2", id: "1")
    end
  end
end
