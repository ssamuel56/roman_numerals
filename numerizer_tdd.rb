require 'minitest/autorun'
require_relative 'numerizer.rb'

class Test < Minitest::Test
  def test_for_1
    assert_equal(1, 1)
  end
  def test_for_hash
    assert_equal(Hash, num_key().class)
  end
end
