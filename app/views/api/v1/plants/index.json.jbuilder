json.plants do
  json.array! @plants do |library|
    json.extract! library, :id, :nickname, :image, :water_frequency, :description, :name, :plant_library_id, :user_id
  end
end
