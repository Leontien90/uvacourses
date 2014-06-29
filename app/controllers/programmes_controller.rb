class ProgrammesController < ApplicationController
  before_action only: [:show]

  # GET /programmes/1
  # GET /programmes/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programme
      @programme = Programme.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def programme_params
      params.require(:programme).permit(:programme_name, :url)
    end
end
