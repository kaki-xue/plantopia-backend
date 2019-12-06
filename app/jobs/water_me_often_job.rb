class WaterMeOftenJob < ApplicationJob
  queue_as :default

   def perform(plant_chat_id)
    Message.create(
      is_user: false,
      text: "Coucou.....Time to water your baby .......!",
      plant_chat_id: plant_chat_id
    )
  end
end
