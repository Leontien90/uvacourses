class Course < ActiveRecord::Base
  has_and_belongs_to_many :programmes
  has_and_belongs_to_many :staffs
  
  def self.search(search)
    search_condition = "%" + search + "%"
    find(:all, :conditions => ['course_name LIKE ? OR description LIKE ?', search_condition, search_condition])
  end
end
