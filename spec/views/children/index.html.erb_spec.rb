require 'rails_helper'

RSpec.describe "children/index", :type => :view do
  before(:each) do
    pending
    assign(:children, [
      Child.create!(),
      Child.create!()
    ])
  end

  it "renders a list of children" do
    render
  end
end
