require_relative '../config/app'
require 'minitest/autorun'
require 'minitest/ci'
require 'rack/test'

class CircleCI::TestHelper < Minitest::Test
  include Rack::Test::Methods

  def app
    CircleCI::Demo
  end
end
