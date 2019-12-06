class PlantLibrary < ApplicationRecord
  has_many :plants, dependent: :destroy
  belongs_to :user, class_name: "PlantLibrary",optional:true
  acts_as_favoritable

  include PgSearch::Model
  pg_search_scope :search_by_name_and_latin_name,
    against: [:name, :latin_name],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
