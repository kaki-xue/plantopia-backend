json.extract! @plant_chat, :id, :plant_id, :user_id

json.messages @plant_chat.messages.each do |msg|
 json.extract! msg, :id, :plant_chat_id, :text, :is_user
end
