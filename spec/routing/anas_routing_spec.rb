require "rails_helper"

RSpec.describe AnasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/anas").to route_to("anas#index")
    end

    it "routes to #new" do
      expect(:get => "/anas/new").to route_to("anas#new")
    end

    it "routes to #show" do
      expect(:get => "/anas/1").to route_to("anas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/anas/1/edit").to route_to("anas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/anas").to route_to("anas#create")
    end

    it "routes to #update" do
      expect(:put => "/anas/1").to route_to("anas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/anas/1").to route_to("anas#destroy", :id => "1")
    end

  end
end
