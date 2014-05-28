require 'spec_helper'

describe "programmes/show" do
  before(:each) do
    @programme = assign(:programme, stub_model(Programme,
      :name => "Name",
      :url => "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Url/)
  end
end
