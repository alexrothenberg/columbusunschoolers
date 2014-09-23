require 'rails_helper'

RSpec.describe "Adults", :type => :request do
  describe "GET /adults" do
    it "works! (now write some real specs)" do
      get adults_path
      expect(response.status).to be(200)
    end
  end
end
