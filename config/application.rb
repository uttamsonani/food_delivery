require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FoodDelivery
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    
    I18n.load_path += Dir[Rails.root.join('lib', 'locale', '*.{rb,yml}')]
    I18n.available_locales = [:en, :gu]
    I18n.default_locale = :en

    config.active_job.queue_adapter = :sidekiq

    # nil will use the "default" queue
    # some of these options will not work with your Rails version
    # add/remove as necessary
    # config.action_mailer.deliver_later_queue_name = nil # defaults to "mailers"
    # config.action_mailbox.queues.routing    = nil       # defaults to "action_mailbox_routing"
    # config.active_storage.queues.analysis   = nil       # defaults to "active_storage_analysis"
    # config.active_storage.queues.purge      = nil       # defaults to "active_storage_purge"
    # config.active_storage.queues.mirror     = nil       # defaults to "active_storage_mirror"
    # config.active_storage.queues.purge    = :low      # alternatively, put purge jobs in the `low` queue
  end
end
