require 'rubygems'
require 'nokogiri'
require 'open-uri'

Course.delete_all
Programme.delete_all
CoursesProgrammes.delete_all
Staff.delete_all
CoursesStaffs.delete_all

doc = Nokogiri::XML(File.open("db/courses.xml")) # this is where I open the complete file. 

doc.css('course').each do |node| # this is where I search each node inside the file
  children = node.children # this is where I look at the nodes inside the courses node.
  course  = Course.create(
    :course_name => children.css('name').first.inner_text,
    :ects        => children.css('ects').inner_text,
    :year        => children.css('year').inner_text,
    :period      => children.css('period').inner_text,
    :institute   => children.css('institute').inner_text,
    :description => children.css('description').inner_text,
    :goals       => children.css('goals').inner_text,
    :participation_count => children.css('participation_count').inner_text,
    :examination => children.css('examination').inner_text
  )

staffs = []  
node.css('staff_list').each do |node2|
  children2 = node2.children
  
  staff = Staff.find_by_id(node2['id'])
  if staff
    staffs << staff
  else
    staffs << Staff.create(
      :id => node2['id'],
      :staff_name => children2.css('name').inner_text,
      :url  => children2.css('url').inner_text
      )
    end
end

programmes = []  
node.css('programmes').each do |node3|
  children3 = node3.children
  
  programme = Programme.find_by_id(node3['id'])
  if programme 
    programmes << programme
  else 
    programmes << Programme.create(
    :id => node3['id'],
    :programme_name => children3.css('name').inner_text,
    :url  => children3.css('url').inner_text
  )
  end
end

course.programmes = programmes
course.staffs = staffs

end



