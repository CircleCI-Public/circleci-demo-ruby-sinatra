require 'sinatra/base'
require 'rack/protection'

module CircleCI
  module Controllers
    def self.registered(app)
      glob = "controllers/**/*.rb"
      path = File.join(app.settings.root, glob)
      Dir[path].each do |controller|
        require controller
      end
    end
  end

  class Demo < Sinatra::Base
    set :root, File.expand_path("..", File.dirname(__FILE__))

    register Rack::Protection
    register CircleCI::Controllers
  end
end
