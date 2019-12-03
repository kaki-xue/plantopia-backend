class Api::V1::MessagesController < Api::V1::BaseController

  def index
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end

  def create
    @message = Message.new(params_message)
    @plant_chat = PlantChat.find(params[:plant_chat_id])
    @message.plant_chat_id = @plant_chat.id
     if @message.save
      render :show, status: :created
    else
      render_error
    end
  end

  private

  def params_plantchat
    params.require(:message).permit(:is_user, :text)
  end

  def render_error
    render json: { errors: @message.errors.full_messages },
      status: :unprocessable_entity
  end
end
