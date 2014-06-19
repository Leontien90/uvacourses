class RelationshipController < ApplicationController
  
  def create
    @course = Course.find(params[:id])
      if @course.save
        render template: "users/#{current_user.id}"
      end
  end

  def destroy
    @user = Course.find(params[:id])
  end
end