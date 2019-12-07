json.extract! @user, :open_id, :id

json.plants @user.plants.each do |plant|
 json.extract! plant, :id, :nickname, :image, :water_frequency, :description, :name, :plant_library_id, :user_id
end

# json.plant_libraries @user.all_favorites.each do |fav|
#   json.extract!fav, :id, :name, :image, :description
# end


