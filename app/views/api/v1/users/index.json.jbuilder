json.users do
  json.array! @users do |user|
    json.extract! user, :open_id, :id

    json.plants do

      json.array! user.plants do |plant|
        json.extract! plant, :id, :nickname, :image, :water_frequency, :description, :name, :plant_library_id, :user_id
      end
    end
  end
end
