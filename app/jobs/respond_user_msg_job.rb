class RespondUserMsgJob < ApplicationJob
  queue_as :default

  def perform(plant_chat_id)
    Message.create(
      is_user: false,
      text: 'Thank you! I am happy! :D',
      plant_chat_id: plant_chat_id
    )
  end
end
