require "rails_helper"

RSpec.describe LoansController, type: :routing do
  describe "routing" do
    it "routes to loan#index as a nested resource of lender" do
      expect(get: lender_loans_path(2)).to route_to("loans#index", lender_id: "2")
    end

    it "routes to loan#new as a nested resource of lender" do
      expect(get: new_lender_loan_path(2)).to route_to("loans#new", lender_id: "2")
    end

    it "routes to loan#show as a nested resource of lender" do
      expect(get: lender_loan_path(2, 1)).to route_to("loans#show", lender_id: "2", id: "1")
    end

    it "routes to loan#edit as a nested resource of lender" do
      expect(get: edit_lender_loan_path(2, 1)).to route_to("loans#edit", lender_id: "2", id: "1")
    end

    it "routes to loan#create as a nested resource of lender" do
      expect(post: lender_loans_path(2)).to route_to("loans#create", lender_id: "2")
    end

    it "routes to loan#update via PUT as a nested resource of lender" do
      expect(put: lender_loan_path(2, 1)).to route_to("loans#update", lender_id: "2", id: "1")
    end

    it "routes to loan#update via PATCH as a nested resource of lender" do
      expect(patch: lender_loan_path(2, 1)).to route_to("loans#update", lender_id: "2", id: "1")
    end

    it "routes to loan#destroy as a nested resource of lender" do
      expect(delete: lender_loan_path(2, 1)).to route_to("loans#destroy", lender_id: "2", id: "1")
    end

    it "routes to loan#current_loans as a nested resource of lender" do
      expect(get: lender_current_loans_path(2)).to route_to("loans#current_loans", lender_id: "2")
    end

    it "routes to loan#returned_loans as a nested resource of lender" do
      expect(get: lender_returned_loans_path(2)).to route_to("loans#returned_loans", lender_id: "2")
    end

    it "routes to loan#new as a nested resource of borrower" do
      expect(get: new_borrower_loan_path(3)).to route_to("loans#new", borrower_id: "3")
    end

    it "routes to loan#create as a nested resource of borrower" do
      expect(post: borrower_loans_path(3)).to route_to("loans#create", borrower_id: "3")
    end

    it "routes to loan#new as a nested resource of item" do
      expect(get: new_item_loan_path(4)).to route_to("loans#new", item_id: "4")
    end

    it "routes to loan#create as a nested resource of item" do
      expect(post: item_loans_path(4)).to route_to("loans#create", item_id: "4")
    end
  end
end
