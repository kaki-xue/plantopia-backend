json.messages do
  json.array! @messages do |message|
    json.extract! message, :id, :is_user, :text, :plant_chat_id
  end
end
