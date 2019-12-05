class FakeJob < ApplicationJob
  queue_as :default

  def perform(user_id)
    user = User.find(user_id)
    UserMailer.with(user: user).welcome.deliver_now
    # Do something later
  end
end
