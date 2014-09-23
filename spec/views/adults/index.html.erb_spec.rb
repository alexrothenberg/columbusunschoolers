require 'rails_helper'

RSpec.describe "adults/index", :type => :view do
  before(:each) do
    assign(:adults, [
      Adult.create!(),
      Adult.create!()
    ])
  end

  it "renders a list of adults" do
    render
  end
end
