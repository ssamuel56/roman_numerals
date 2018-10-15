require 'minitest/autorun'
require_relative 'numerizer.rb'

class Test < Minitest::Test
  def test_for_1
    assert_equal(1, 1)
  end
  def test_for_hash
    assert_equal(Hash, numerals.class)
  end
  def test_hash_vulue_of_0
    assert_equal("", numerals.fetch(0))
  end
  def test_hash_vulue_of_1000
    assert_equal("M", numerals.fetch(1000))
  end
  def test_hash_vulue_od_500
    assert_equal("D", numerals.fetch(500))
  end
end
