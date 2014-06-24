class Shopped < ActiveRecord::Base
  belongs_to :course
  belongs_to :user
  
  def create
  end
end
