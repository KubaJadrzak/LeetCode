# frozen_string_literal: true

def palindrome?(int)
  str = int.to_s
  return true if str == str.reverse

  false
end
