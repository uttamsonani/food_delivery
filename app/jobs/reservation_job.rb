class ReservationJob < ApplicationJob
  queue_as :default

  retry_on ErrorLoadingSite, wait: 5.minutes, queue: :low_priority 
  
  sidekiq_options retry: 5
  
  def perform(*args)
    # Do something later
  end
end
