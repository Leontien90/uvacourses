require 'spec_helper'

describe "courses/index" do
  before(:each) do
    assign(:courses, [
      stub_model(Course,
        :name => "Name",
        :ects => 1,
        :year => "Year",
        :period => "Period",
        :institute => "Institute",
        :description => "MyText",
        :goals => "MyText",
        :participation_count => "Participation Count",
        :examination => "Examination"
      ),
      stub_model(Course,
        :name => "Name",
        :ects => 1,
        :year => "Year",
        :period => "Period",
        :institute => "Institute",
        :description => "MyText",
        :goals => "MyText",
        :participation_count => "Participation Count",
        :examination => "Examination"
      )
    ])
  end

  it "renders a list of courses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Year".to_s, :count => 2
    assert_select "tr>td", :text => "Period".to_s, :count => 2
    assert_select "tr>td", :text => "Institute".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Participation Count".to_s, :count => 2
    assert_select "tr>td", :text => "Examination".to_s, :count => 2
  end
end
