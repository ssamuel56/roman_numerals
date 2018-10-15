def numerals
  num_key = {
    1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C",
    90 => "XC", 50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V",
    3 => "IV", 1 => "I"
  }
end


def romanize(n, hash)
  if n == 0
  return ""
  else
    roman = ""
    numerals.each do |value, letter|
      roman << letter*(n / value)
      n = n % value
    end
    return roman
  end
end
