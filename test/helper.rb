require_relative '../config/app'
require 'minitest/autorun'
require 'minitest/ci'
require 'rack/test'

if ENV["CIRCLECI"]
  Minitest::Ci.report_dir = "/tmp/test-results"
end

class CircleCI::TestHelper < Minitest::Test
  include Rack::Test::Methods

  def app
    CircleCI::Demo
  end
end
