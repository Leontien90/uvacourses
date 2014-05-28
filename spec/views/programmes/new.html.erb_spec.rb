require 'spec_helper'

describe "programmes/new" do
  before(:each) do
    assign(:programme, stub_model(Programme,
      :name => "MyString",
      :url => "MyString"
    ).as_new_record)
  end

  it "renders new programme form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", programmes_path, "post" do
      assert_select "input#programme_name[name=?]", "programme[name]"
      assert_select "input#programme_url[name=?]", "programme[url]"
    end
  end
end
