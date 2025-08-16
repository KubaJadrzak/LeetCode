# frozen_string_literal: true

def roman_to_int(roman_str)
  dict = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  reversed_roman_str = roman_str.reverse
  size = roman_str.size
  result = 0
  i = 0

  while i < size
    if dict[reversed_roman_str[i + 1]] && dict[reversed_roman_str[i + 1]] < dict[reversed_roman_str[i]]
      result += (dict[reversed_roman_str[i]] - dict[reversed_roman_str[i + 1]])

      i += 2
    else
      result += dict[reversed_roman_str[i]]

      i += 1
    end
  end

  result
end

puts roman_to_int('MCMXCIV')
