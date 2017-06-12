require_relative 'helper'

class WelcomeTest < CircleCI::TestHelper
  def test_it_says_hello_world
    get '/'
    assert last_response.ok?
    assert_match 'Hello, world!', last_response.body
  end
end
