class Api::V1::MessagesController < Api::V1::BaseController
skip_before_action :verify_authenticity_token

  def index
    # unless params[:plant_chat_id].nil? or params[:plant_chat_id] == ""
      @messages = Message.where(plant_chat_id: params[:plant_chat_id]).order(created_at: :asc)
    # end

    # @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end

  def create
    @message = Message.new(params_message)
     if @message.save
      render :show, status: :created
    else
      render_error
    end
  end

  private

  def params_message
    params.require(:message).permit(:is_user, :text, :plant_chat_id)
  end

  def render_error
    render json: { errors: @message.errors.full_messages },
      status: :unprocessable_entity
  end

end
