class TakensController < ApplicationController
  
  def addtaken
    @course = Course.find(params[:id])
    current_user.coursestaken << @course
    current_user.coursesshopped.delete(@course)
    redirect_to current_user
  end
  
  def update
    @course = Course.find(params[:id])
    current_user.coursestaken.delete(@course)
    redirect_to current_user
  end
  
end

