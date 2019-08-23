require "rails_helper"

RSpec.describe BorrowersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/borrowers").to route_to("borrowers#index")
    end

    it "routes to #new" do
      expect(:get => "/borrowers/new").to route_to("borrowers#new")
    end

    it "routes to #show" do
      expect(:get => "/borrowers/1").to route_to("borrowers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/borrowers/1/edit").to route_to("borrowers#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/borrowers").to route_to("borrowers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/borrowers/1").to route_to("borrowers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/borrowers/1").to route_to("borrowers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/borrowers/1").to route_to("borrowers#destroy", :id => "1")
    end
  end
end
