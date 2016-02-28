require 'rails_helper'

RSpec.describe "Families", :type => :request do
  before { pending }

  describe "GET /families" do
    it "works! (now write some real specs)" do
      get families_path
      expect(response.status).to be(200)
    end
  end
end
