json.plant_libraries do
  json.array! @plant_libraries do |library|
    json.extract! library, :user_id, :id, :name, :image, :latin_name, :average_height, :light_preference, :water_freq_avg, :description
  end
end
