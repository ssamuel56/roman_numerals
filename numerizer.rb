def numerals
  num_key = {
    1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C",
    90 => "XC", 50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V",
    3 => "IV", 1 => "I", 0 => ""
  }
end

def romanize(n)
  numerals_reversed = numerals.invert
  roman = ""

  numerals.each do |num, value|
    roman += num*(n / value)
    n = n % value
  end
  return roman
end
