require "spec_helper"

describe VidsController do
  describe "routing" do

    it "routes to #index" do
      get("/vids").should route_to("vids#index")
    end

    it "routes to #new" do
      get("/vids/new").should route_to("vids#new")
    end

    it "routes to #show" do
      get("/vids/1").should route_to("vids#show", :id => "1")
    end

    it "routes to #edit" do
      get("/vids/1/edit").should route_to("vids#edit", :id => "1")
    end

    it "routes to #create" do
      post("/vids").should route_to("vids#create")
    end

    it "routes to #update" do
      put("/vids/1").should route_to("vids#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/vids/1").should route_to("vids#destroy", :id => "1")
    end

  end
end
