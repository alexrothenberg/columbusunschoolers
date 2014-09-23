require 'rails_helper'

RSpec.describe "adults/show", :type => :view do
  before(:each) do
    @adult = assign(:adult, Adult.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
