require 'spec_helper'

describe "startups/new" do
  before(:each) do
    assign(:startup, stub_model(Startup,
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new startup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", startups_path, "post" do
      assert_select "input#startup_description[name=?]", "startup[description]"
    end
  end
end
