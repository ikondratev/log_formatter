require 'minitest/autorun'
require 'log_formatter/version'

class TestVersion < Minitest::Test
  include LogFormatter

  def test_ping
    assert_equal("0.0.1", LogFormatter::VERSION)
  end
end
