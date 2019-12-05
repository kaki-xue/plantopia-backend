class Api::V1::PlantChatsController < Api::V1::BaseController
skip_before_action :verify_authenticity_token
  def show
    @plant_chat = PlantChat.find(params[:id])
  end


  def create
    @plant_chat = PlantChat.find_or_create_by(user_id: params_plant_chat[:user_id], plant_id: params_plant_chat[:plant_id])
     if @plant_chat.save
      render :show, status: :created
    else
      render_error
    end
  end

    private

  def params_plant_chat
    params.require(:plant_chat).permit(:user_id, :plant_id)
  end


  def render_error
    render json: { errors: @message.errors.full_messages },
      status: :unprocessable_entity
  end

end

