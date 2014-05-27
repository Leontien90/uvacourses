require 'rubygems'
require 'nokogiri'
require 'open-uri'

Course.delete_all
courses = Nokogiri::XML(File.open("db/courses.xml")) # this is where I open the complete file. 

courses.css('course').each do |node| # this is where I search each node inside the file
  children = node.children # this is where I look at the nodes inside the courses node. 
  
  Course.create(
    :name        => children.css('name').inner_text,
    :ects        => children.css('ects').inner_text,
    :year        => children.css('year').inner_text,
    :period      => children.css('period').inner_text,
    :institute   => children.css('institute').inner_text,
    :description => children.css('description').inner_text,
    :goals       => children.css('goals').inner_text,
    :participant_count => children.css('participant_count').inner_text,
    :examination => children.css('examination').inner_text)
  end
  
  
  node.css('staff').each do |node2|
    children2 = node2.children
    
    Staff.create(
      :id   => node[:id],
      :name => children2.css('name').inner_text,
      :url  => children2.css('url').inner_text)
    end
  
    node.css('programme').each do |node3|
      children3 = node3.children
    
      Programme.create(
        :id   => node[:id],
        :name => children3.css('name').inner_text,
        :url  => children3.css('url').inner_text)
      end
    end
  end
end




