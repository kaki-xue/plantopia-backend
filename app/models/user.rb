class User < ApplicationRecord
  after_commit :send_welcome_email
  after_commit :perform_fake_job
  has_many :plants, dependent: :destroy
  acts_as_favoritor

  private

  def perform_fake_job
    FakeJob.perform_now(self.id)
  end

  def send_welcome_email
    UserMailer.with(user:self).welcome.deliver_now
  end
end
