class CoursesStaffs < ActiveRecord::Base
  belongs_to :course
  belongs_to :staff
end
