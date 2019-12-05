class Message < ApplicationRecord
  # after_commit :perform_fake_job
  belongs_to :plant_chat

  #  def perform_fake_job

  #   FakeJob.perform_later(self.id)
  # end
end
