class Plant < ApplicationRecord
  belongs_to :user
  belongs_to :plant_library, class_name: "Plant",optional:true
  has_one :plant_chat, dependent: :destroy
  acts_as_favoritable
end
