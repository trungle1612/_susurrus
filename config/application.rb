require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Susurrus
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    config.assets.paths << Rails.root.join('app', 'assets', "fonts")
    config.assets.paths << Rails.root.join('vendor', 'assets')
    config.autoload_paths += %W(#{config.root}/lib/src)
    config.autoload_paths += %W(#{config.root}/lib/)

    # load active_admin
    config.assets.precompile += %w( admin/active_admin.css )
    config.assets.precompile += %w( admin/active_admin.js )

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
