json.plants do
  json.array! @plants do |library|
    json.extract! library, :id, :nickname, :image, :water_frequency
  end
end
