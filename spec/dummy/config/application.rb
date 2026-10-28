# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'
require 'sprockets/railtie'

Bundler.require(*Rails.groups)
require 'classnames/rails/view'

module Dummy
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    if Rails.gem_version >= Gem::Version.new('7.1')
      config.active_support.cache_format_version = 7.1
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.classnames_rails_view.method_name = :cn
  end
end
