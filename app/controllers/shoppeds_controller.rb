class ShoppedsController < ApplicationController
  
  def addshopped
    @course = Course.find(params[:id])
    current_user.coursesshopped << @course
    redirect_to current_user
  end
  
  def update
    @course = Course.find(params[:id])
    current_user.coursesshopped.delete(@course)
    redirect_to current_user
  end
  
end