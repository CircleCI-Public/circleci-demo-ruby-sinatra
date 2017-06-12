require_relative '../config/app'
require 'minitest/autorun'
require 'minitest/ci'
require 'rack/test'

if ENV["CIRCLECI"]
  Minitest::Ci.report_dir = "#{ENV["CIRCLE_TEST_REPORTS"]}/reports"
end

class CircleCI::TestHelper < Minitest::Test
  include Rack::Test::Methods

  def app
    CircleCI::Demo
  end
end
