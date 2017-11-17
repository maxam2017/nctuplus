require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Nctuplus
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
		#config.assets.paths << "#{Rails}/vendor/assets/fonts"
		
		config.i18n.default_locale = "zh-TW"
 #   I18n.enforce_available_locales = false

    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"
		config.time_zone = 'Taipei'
		
		config.middleware.use Rack::JSONP
		
		# Enable escaping HTML in JSON.
    config.active_support.escape_html_entities_in_json = true
		# Enable the asset pipeline
    config.assets.enabled = true

    config.autoload_paths += Dir[Rails.root.join('app', 'models', '{**/}')]

  end
end
