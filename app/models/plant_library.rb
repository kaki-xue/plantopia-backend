class PlantLibrary < ApplicationRecord
  has_many :plants, dependent: :destroy
  # belongs_to :user, class_name: "PlantLibrary",optional:true
   belongs_to :user, optional:true
  acts_as_favoritable

  include PgSearch::Model
  pg_search_scope :search_by_name_and_latin_name_and_description_and_water_freq,
    against: [:name, :latin_name, :description, :water_freq_avg],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
