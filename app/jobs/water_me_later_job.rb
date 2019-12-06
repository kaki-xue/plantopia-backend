class WaterMeLaterJob < ApplicationJob
   queue_as :default

  def perform(plant_chat_id)
    Message.create(
      is_user: false,
      text: "ok..dear leader.. somebody's a busy bee. Just make sure to water me later - I'm thirsty!",
      plant_chat_id: plant_chat_id
    )
  end
end
