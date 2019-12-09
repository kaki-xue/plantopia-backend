class Message < ApplicationRecord
  # after_commit :perform_fake_job
  after_commit :sayThankYou, :sayLater

  belongs_to :plant_chat

  def sayThankYou
    if self.is_user == true && self.text == "Hey buddy, just watered ya!"
      RespondUserMsgJob.perform_later(self.plant_chat_id)
      time = self.plant_chat.plant.water_frequency
      WaterMeOftenJob.set(wait: time.days).perform_later(self.plant_chat_id)
    end
  end

  def sayLater
    if self.is_user == true && self.text == "Hold on there, I'll water you later"
      WaterMeLaterJob.perform_later(self.plant_chat_id)
      WaterMeOftenJob.set(wait: 1.day).perform_later(self.plant_chat_id)
    end
  end

  #  def perform_fake_job

  #   FakeJob.perform_later(self.id)
  # end
end
