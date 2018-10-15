def numerals
  number_key = {
    1000 => "M", 900 => "CM", 500 => "D", 400 => "CD",
    100 => "C", 90 => "XC", 50 => "L", 40 => "XL",
    10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I",
  }
end

def numerals_reversed
  number_key = {
    400 => "CD", 900 => "CM", 90 => "XC", 40 => "XL", 9 => "IX",
    4 => "IV", 1000 => "M", 500 => "D", 100 => "C", 50 => "L",
    10 => "X", 5 => "V", 1 => "I"
  }
  numeral_key = number_key.invert
  return numeral_key
end

def romanize(n, hash)
  if n == 0
  return ""
elsif hash == numerals
    roman = ""
    hash.each do |value, letter|
      roman << letter*(n / value)
      n = n % value
    end
    return roman
  elsif hash == numerals_reversed
    roman = 0
    hash.each do |value, letter|
      roman += letter * n.scan(/#{value}/).count()
      n = n.sub(/#{value}/, "")
    end
    return roman
  end
end
