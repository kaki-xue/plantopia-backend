class PlantChat < ApplicationRecord
  belongs_to :user
  belongs_to :plant
  has_many :messages, dependent: :destroy

  after_commit :waterMeOften



    def waterMeOften
     WaterMeOftenJob.perform_in(20.seconds, self.id)
    end
end
