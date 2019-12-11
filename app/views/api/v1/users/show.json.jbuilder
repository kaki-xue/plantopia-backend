json.extract! @user, :open_id, :id

 json.plants @user.plants.each do |plant|
 json.extract! plant, :id, :nickname, :image, :water_frequency, :description, :name, :plant_library_id, :user_id
 if plant.plant_chat.present? && plant.plant_chat.messages.present?
  json.plant_thirsty (plant.plant_chat.messages.last.text == "Coucou.....Time to water your baby .......!" || plant.plant_chat.messages.last.text == "ok..dear leader.. somebody's a busy bee. Just make sure to water me later - I'm thirsty!")
 elsif plant.plant_chat.nil?
  json.plant_thirsty true
 else
   json.plant_thirsty false
 end

end

