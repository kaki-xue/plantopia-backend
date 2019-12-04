class Plant < ApplicationRecord
  belongs_to :user
  belongs_to :plant_library, class_name: "Plant",optional:true
  acts_as_favoritable
end
