class Plant < ApplicationRecord
  belongs_to :user
  belongs_to :plant_library
  acts_as_favoritable
end
