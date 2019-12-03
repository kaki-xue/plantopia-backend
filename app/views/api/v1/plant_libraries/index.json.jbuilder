json.plant_libraries do
  json.array! @plant_libraries do |library|
    json.extract! library, :id, :name, :image, :latin_name, :average_height, :light_preference, :water_freq_avg
  end
end
