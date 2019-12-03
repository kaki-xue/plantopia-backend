class Api::V1::PlantChatsController < Api::V1::BaseController

  def show
    @plant_chat = PlantChat.find(params[:id])
  end

end

