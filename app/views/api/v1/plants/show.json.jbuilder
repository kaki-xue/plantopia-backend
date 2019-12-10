json.extract! @plant, :id, :nickname, :image, :water_frequency, :description, :name, :plant_library_id, :user_id

unless @plant.plant_library_id.nil?

  json.plant_library @plant.plant_library, :latin_name, :description, :family, :average_height, :light_preference, :soil, :flowering, :watering, :careinfo

end
