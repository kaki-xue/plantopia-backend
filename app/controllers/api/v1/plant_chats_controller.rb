class Api::V1::PlantChatsController < Api::V1::BaseController

skip_before_action :verify_authenticity_token

  def show
    @plant_chat = PlantChat.find(params[:id])
  end

  def create
    @plant_chat = PlantChat.where(user_id: params_plant_chat[:user_id], plant_id: params_plant_chat[:plant_id])
    if @plant_chat == []
      @plant_chat = PlantChat.new(user_id: params_plant_chat[:user_id], plant_id: params_plant_chat[:plant_id])
      @plant_chat.save
      time = @plant_chat.plant.water_frequency
      WaterMeOftenJob.set(wait: time.days).perform_later(@plant_chat.id)
      render :show
    else
      @plant_chat = @plant_chat.first
      render :show
    end
  end

  private

  def params_plant_chat
    params.require(:plant_chat).permit(:user_id, :plant_id)
  end

  def render_error
    render json: { errors: @plant_chat.errors.full_messages },
      status: :unprocessable_entity
  end
end

