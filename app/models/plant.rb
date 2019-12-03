class Plant < ApplicationRecord
  belongs_to :user
  has_many :plant_libraries, dependent: :destroy
  acts_as_favoritable
end
