class User < ApplicationRecord
  after_commit :send_welcome_email
  has_many :plants, dependent: :destroy
  has_many :plant_libraries, dependent: :destroy
  acts_as_favoritor

  # private

  def send_welcome_email
    UserMailer.with(user: self).welcome.deliver_now
  end
end
