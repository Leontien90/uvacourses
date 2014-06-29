class StaffsController < ApplicationController
  before_action only: [:show, :edit, :update, :destroy]

  # GET /staffs/1
  # GET /staffs/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_staff
      @staff = Staff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def staff_params
      params.require(:staff).permit(:staff_name, :url)
    end
end
