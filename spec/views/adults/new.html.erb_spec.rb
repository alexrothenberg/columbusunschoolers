require 'rails_helper'

RSpec.describe "adults/new", :type => :view do
  before(:each) do
    assign(:adult, Adult.new())
  end

  it "renders new adult form" do
    render

    assert_select "form[action=?][method=?]", adults_path, "post" do
    end
  end
end
