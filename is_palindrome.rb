# frozen_string_literal: true

def palindrome?(integer)
  str = integer.to_s
  return true if str == str.reverse

  false
end
