class PledgesController < ApplicationController
  def index
    @pledges = Pledge.all
  end
  def new
    @pledge = Pledge.new
  end

  def create
    @pledge = Pledge.new(pledge_params)

    respond_to do |format|
      if @pledge.save
        format.html { redirect_to Project.find(@pledge.project_id), notice: 'pledge is successfully created.' }

      else
        format.html { render :new , notice: 'You have to complete the fields' }
      end
    end
  end

  def destroy
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reward
      @pledge = pledge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pledge_params
      params.require(:pledge).permit(:amount, :project_id, :user_id)
    end

  end