json.users do
  json.array! @users do |user|
    json.extract! user, :open_id, :id
    json.plants user.plants, :id, :nickname, :image, :water_frequency, :description, :name, :plant_library_id, :user_id
  end
end
