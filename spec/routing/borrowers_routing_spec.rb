require "rails_helper"

RSpec.describe BorrowersController, type: :routing do
  describe "routing" do
    it "routes to borrower#index as a nested resource of lender" do
      expect(get: lender_borrowers_path(2)).to route_to("borrowers#index", lender_id: "2")
    end

    it "routes to borrower#new as a nested resource of lender" do
      expect(get: new_lender_borrower_path(2)).to route_to("borrowers#new", lender_id: "2")
    end

    it "routes to borrower#show as a nested resource of lender" do
      expect(get: lender_borrower_path(2, 1)).to route_to("borrowers#show", lender_id: "2", id: "1")
    end

    it "routes to borrower#edit as a nested resource of lender" do
      expect(get: edit_lender_borrower_path(2, 1)).to route_to("borrowers#edit", lender_id: "2", id: "1")
    end

    it "routes to borrower#create as a nested resource of lender" do
      expect(post: lender_borrowers_path(2)).to route_to("borrowers#create", lender_id: "2")
    end

    it "routes to borrower#update via PUT as a nested resource of lender" do
      expect(put: lender_borrower_path(2, 1)).to route_to("borrowers#update", lender_id: "2", id: "1")
    end

    it "routes to borrower#update via PATCH as a nested resource of lender" do
      expect(patch: lender_borrower_path(2, 1)).to route_to("borrowers#update", lender_id: "2", id: "1")
    end

    it "routes to borrower#destroy as a nested resource of lender" do
      expect(delete: lender_borrower_path(2, 1)).to route_to("borrowers#destroy", lender_id: "2", id: "1")
    end
  end
end
