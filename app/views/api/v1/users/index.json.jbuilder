json.users do
  json.array! @users do |user|
    json.extract! user, :open_id, :id
  end
end
