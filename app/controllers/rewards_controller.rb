class RewardsController < ApplicationController
  def index
    @rewards = Reward.all
  end
  def new
    @reward = Reward.new
  end

  def create
    @reward = Reward.new(reward_params)
    respond_to do |format|
      if @reward.save
        format.html { redirect_to Project.find(@reward.project_id), notice: 'reward is successfully created.' }

      else
        format.html { render :new , notice: 'You have to complete the fields' }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @reward.update(reward_params)
        format.html { redirect_to @reward, notice: 'reward was successfully updated.' }
      else
        format.html { render :edit, notice: 'reward was not updated' }
      end
    end
  end

  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reward
      @reward = reward.find(params[:id])
    end


   

    # Never trust parameters from the scary internet, only allow the white list through.
    def reward_params
      params.require(:reward).permit(:title, :value, :description, :quantity, :estimated_delivery, :project_id)
    end
end
