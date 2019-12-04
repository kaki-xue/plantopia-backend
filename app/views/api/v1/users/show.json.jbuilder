json.extract! @user, :open_id, :id
json.plants @user.plants.each do |plant|
 json.extract! plant, :id, :nickname, :image, :water_frequency, :description, :name
end
