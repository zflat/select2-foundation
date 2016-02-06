require 'rails'

module Select2Foundation
  module Rails
    class Engine < ::Rails::Engine
      config.assets.paths << File.expand_path("../assets/stylesheets", __FILE__)
    end
  end
end
