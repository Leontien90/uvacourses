require 'spec_helper'

describe "courses/show" do
  before(:each) do
    @course = assign(:course, stub_model(Course,
      :name => "Name",
      :ects => 1,
      :year => "Year",
      :period => "Period",
      :institute => "Institute",
      :description => "MyText",
      :goals => "MyText",
      :participation_count => "Participation Count",
      :examination => "Examination"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/Year/)
    rendered.should match(/Period/)
    rendered.should match(/Institute/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Participation Count/)
    rendered.should match(/Examination/)
  end
end
