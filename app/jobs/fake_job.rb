class FakeJob < ApplicationJob
  queue_as :default

  def perform()

    # puts "faker email send"
    # Do something later
  end
end
