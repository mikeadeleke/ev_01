require 'spec_helper'

describe "relationships/show" do
  before(:each) do
    @relationship = assign(:relationship, stub_model(Relationship,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
