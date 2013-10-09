require 'spec_helper'

describe "startups/index" do
  before(:each) do
    assign(:startups, [
      stub_model(Startup,
        :description => "Description"
      ),
      stub_model(Startup,
        :description => "Description"
      )
    ])
  end

  it "renders a list of startups" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
