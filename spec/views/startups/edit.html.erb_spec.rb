require 'spec_helper'

describe "startups/edit" do
  before(:each) do
    @startup = assign(:startup, stub_model(Startup,
      :name => "MyString",
      :URl => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit startup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", startup_path(@startup), "post" do
      assert_select "input#startup_name[name=?]", "startup[name]"
      assert_select "input#startup_URl[name=?]", "startup[URl]"
      assert_select "textarea#startup_description[name=?]", "startup[description]"
    end
  end
end
