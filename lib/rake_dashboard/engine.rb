module RakeDashboard
  class Engine < ::Rails::Engine
    require 'jquery-rails'

    isolate_namespace RakeDashboard

    config.generators do |g|
      g.test_framework :rspec, :fixture => false
      g.assets false
      g.helper false
    end
  end
end
