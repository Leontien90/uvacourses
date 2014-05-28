class Course < ActiveRecord::Base
  has_and_belongs_to_many :programmes
  has_and_belongs_to_many :staffs
end
