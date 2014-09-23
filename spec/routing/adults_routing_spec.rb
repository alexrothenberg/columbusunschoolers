require "rails_helper"

RSpec.describe AdultsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/adults").to route_to("adults#index")
    end

    it "routes to #new" do
      expect(:get => "/adults/new").to route_to("adults#new")
    end

    it "routes to #show" do
      expect(:get => "/adults/1").to route_to("adults#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/adults/1/edit").to route_to("adults#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/adults").to route_to("adults#create")
    end

    it "routes to #update" do
      expect(:put => "/adults/1").to route_to("adults#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/adults/1").to route_to("adults#destroy", :id => "1")
    end

  end
end
