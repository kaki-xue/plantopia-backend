class Message < ApplicationRecord
  # after_commit :perform_fake_job
  after_commit :SayThankYou
  belongs_to :plant_chat

  def SayThankYou
    if self.is_user == true && self.text == "Hey buddy, just watered ya!"
      RespondUserMsgJob.perform_later(self.plant_chat_id)
    end
  end

  #  def perform_fake_job

  #   FakeJob.perform_later(self.id)
  # end
end
