json.extract! @user, :open_id, :id

json.plants @user.plants.each do |plant|
 json.extract! plant, :id, :nickname, :image, :water_frequency, :description, :name, :plant_library_id, :user_id
end

json.plant_libraries @user.plant_libraries.each do |plant_lib|
  json.extract!plant_lib, :id, :name, :image, :description
end


