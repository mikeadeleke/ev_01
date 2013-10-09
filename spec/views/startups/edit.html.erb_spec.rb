require 'spec_helper'

describe "startups/edit" do
  before(:each) do
    @startup = assign(:startup, stub_model(Startup,
      :description => "MyString"
    ))
  end

  it "renders the edit startup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", startup_path(@startup), "post" do
      assert_select "input#startup_description[name=?]", "startup[description]"
    end
  end
end
