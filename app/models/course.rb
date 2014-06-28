class Course < ActiveRecord::Base
  has_and_belongs_to_many :programmes
  has_and_belongs_to_many :staffs
  has_many :shoppeds
  has_many :usersshopped, :through => :shoppeds
  has_many :takens
  has_many :userstaken, :through => :takens
  has_many :viewedcourses
  has_many :usersviewed, :through => :viewedcourses
  
  def self.search(search)
    search_condition = "%" + search + "%"
    find(:all, :conditions => ['course_name LIKE ? OR description LIKE ?', search_condition, search_condition])
  end
end
