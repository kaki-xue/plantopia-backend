class PlantChat < ApplicationRecord
  belongs_to :user
  belongs_to :plant
  has_many :messages, dependent: :destroy

  # after_create :waterMeOften



  # def waterMeOften
  #   # need to find the instance of the plant associated with the plant chat
  #   # then need to get the number of water frequency from this instance
  #   # then need to pass it below (replace it with where 20 currently is at the moment)
  #   WaterMeOftenJob.perform_at(20.seconds.from_now, self.id)
  # end

end
