require 'rails_helper'

RSpec.describe "adults/edit", :type => :view do
  before(:each) do
    pending
    @adult = assign(:adult, Adult.create!())
  end

  it "renders the edit adult form" do
    render

    assert_select "form[action=?][method=?]", adult_path(@adult), "post" do
    end
  end
end
