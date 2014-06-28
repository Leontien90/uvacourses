class CoursesController < ApplicationController
  before_action only: :show

  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.all
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    @course = Course.find(params[:search])
  end

  # GET /courses/view/1
  def view 
    @course = Course.find(params[:id])
  end
  
  # POST /courses/search
  def search
    @courses = Course.search params[:search]
    render template: "courses/show"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:search])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:course_name, :ects, :year, :period, :institute, :description, :goals, :participation_count, :examination)
    end    
end
