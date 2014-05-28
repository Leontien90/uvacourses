require 'spec_helper'

describe "staffs/new" do
  before(:each) do
    assign(:staff, stub_model(Staff,
      :name => "MyString",
      :url => "MyString"
    ).as_new_record)
  end

  it "renders new staff form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", staffs_path, "post" do
      assert_select "input#staff_name[name=?]", "staff[name]"
      assert_select "input#staff_url[name=?]", "staff[url]"
    end
  end
end
