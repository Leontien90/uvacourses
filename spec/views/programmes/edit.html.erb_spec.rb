require 'spec_helper'

describe "programmes/edit" do
  before(:each) do
    @programme = assign(:programme, stub_model(Programme,
      :name => "MyString",
      :url => "MyString"
    ))
  end

  it "renders the edit programme form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", programme_path(@programme), "post" do
      assert_select "input#programme_name[name=?]", "programme[name]"
      assert_select "input#programme_url[name=?]", "programme[url]"
    end
  end
end
