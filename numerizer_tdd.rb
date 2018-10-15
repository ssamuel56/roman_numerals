require 'minitest/autorun'
require_relative 'numerizer.rb'

class Test < Minitest::Test
  def test_for_1
    assert_equal(1, 1)
  end
  def test_for_hash_numerals
    assert_equal(Hash, numerals.class)
  end
  def test_for_hash_numerals_reversed
    assert_equal(Hash, numerals_reversed.class)
  end
  def test_hash_value_of_0
    assert_equal("X", numerals.fetch(10))
  end
  def test_hash_value_of_1000
    assert_equal("M", numerals.fetch(1000))
  end
  def test_hash_value_of_500
    assert_equal("D", numerals.fetch(500))
  end
  def test_hash_value_of_90
    assert_equal("XC", numerals.fetch(90))
  end
  def test_hash_value_of_47
    assert_equal("XL", numerals.fetch(40))
  end
  def test_romanize_for_0
    assert_equal("", romanize(0, numerals()))
  end
  def test_romanize_reverse_for_0
    assert_equal("", romanize(0, numerals_reversed()))
  end
  def test_romanize_for_1
    assert_equal("I", romanize(1, numerals()))
  end
  def test_romanize_for_48
    assert_equal("LIX", romanize(59, numerals()))
  end
  def test_romanize_for_74
    assert_equal("LXXIV", romanize(74, numerals()))
  end
  def test_romanize_for_100
    assert_equal("C", romanize(100, numerals()))
  end
  def test_romanize_for_246
    assert_equal("CCXLVI", romanize(246, numerals()))
  end
  def test_romanize_for_482
    assert_equal("CDLXXXII", romanize(482, numerals()))
  end
  def test_romanize_for_556
    assert_equal("DLVI", romanize(556, numerals()))
  end
  def test_romanize_for_944
    assert_equal("CMXLIV", romanize(944, numerals()))
  end
  def test_romanize_for_1449
    assert_equal("MCDXLIX", romanize(1449, numerals()))
  end
  def checking_hash_for_reverse
    assert_equal(Hash, numerals_reversed().class)
  end
  def test_romanize_reverse_for_i
    assert_equal(1, romanize("I", numerals_reversed))
  end
  def test_romanize_reverse_for_iv
    assert_equal(4, romanize("IV", numerals_reversed))
  end
  def test_romanize_reverse_for_v
    assert_equal(5, romanize("V", numerals_reversed))
  end
end
