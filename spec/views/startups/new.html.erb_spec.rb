require 'spec_helper'

describe "startups/new" do
  before(:each) do
    assign(:startup, stub_model(Startup,
      :name => "MyString",
      :URl => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new startup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", startups_path, "post" do
      assert_select "input#startup_name[name=?]", "startup[name]"
      assert_select "input#startup_URl[name=?]", "startup[URl]"
      assert_select "textarea#startup_description[name=?]", "startup[description]"
    end
  end
end
