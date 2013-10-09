require 'spec_helper'

describe "startups/index" do
  before(:each) do
    assign(:startups, [
      stub_model(Startup,
        :name => "Name",
        :URl => "U Rl",
        :description => "MyText"
      ),
      stub_model(Startup,
        :name => "Name",
        :URl => "U Rl",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of startups" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "U Rl".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
