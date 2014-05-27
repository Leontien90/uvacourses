require 'spec_helper'

describe "courses/new" do
  before(:each) do
    assign(:course, stub_model(Course,
      :name => "MyString",
      :ects => 1,
      :year => "MyString",
      :period => "MyString",
      :institute => "MyString",
      :description => "MyText",
      :goals => "MyText",
      :participation_count => "MyString",
      :examination => "MyString"
    ).as_new_record)
  end

  it "renders new course form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", courses_path, "post" do
      assert_select "input#course_name[name=?]", "course[name]"
      assert_select "input#course_ects[name=?]", "course[ects]"
      assert_select "input#course_year[name=?]", "course[year]"
      assert_select "input#course_period[name=?]", "course[period]"
      assert_select "input#course_institute[name=?]", "course[institute]"
      assert_select "textarea#course_description[name=?]", "course[description]"
      assert_select "textarea#course_goals[name=?]", "course[goals]"
      assert_select "input#course_participation_count[name=?]", "course[participation_count]"
      assert_select "input#course_examination[name=?]", "course[examination]"
    end
  end
end