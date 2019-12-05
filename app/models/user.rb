class User < ApplicationRecord
  after_create :send_welcome_email
  has_many :plants, dependent: :destroy
  acts_as_favoritor

  private

  def send_welcome_email
    UserMailer.with(user:self).welcome.deliver_now
  end
end
